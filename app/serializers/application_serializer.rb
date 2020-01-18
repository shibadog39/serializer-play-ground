class ApplicationSerializer
  include FastJsonapi::ObjectSerializer

  private

  def hash_for_collection
    # dataのattributesまでのネストを省略して、{ attribute: value }の配列を返す
    # ex: [{ somthing: true }]
    hash = super
    return hash[:data].map { |item| item[:attributes] } unless @params[:key_is_id]

    # {何かのid値: obj}で返したいときはparamsにkey_is_id: trueを指定する
    # ex:
    # {
    #   0: {somthing: true},
    #   1: {somthing: true}
    # }
    hash[:data].each_with_object({}) do |item, result|
      result[item[:id]] = item[:attributes]
    end
  end

  # dataのattributesまでのネストを省略して、{ attribute: value }を返す
  # ex: { somthing: true }
  def hash_for_one_record
    hash = super
    hash[:data][:attributes]
  end
end
