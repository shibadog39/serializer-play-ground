# 試したSerializer

## fast_jsonapi
A lightning fast JSON:API serializer for Ruby Objects.  
https://github.com/Netflix/fast_jsonapi  

Json:API形式へ超高速でシリアライズできる  
[ベンチマーク](https://github.com/fast-jsonapi/fast_jsonapi#benchmark-times-for-250-records)  
  
[このPRで試してみたように](https://github.com/shibadog39/serializer-play-ground/pull/2)、やろうとすれば無理やり別形式にカスタマイズすることもできる



※[このissue](https://github.com/Netflix/fast_jsonapi/issues/433) によると、Netflix社のメンテが止まってしまっており[こちら](https://github.com/fast-jsonapi/fast_jsonapi)のforkedリポジトリでメンテしていこうという流れになっている(2020/1月現在)


## ActiveModel Serializer
ActiveModel::Serializer implementation and Rails hooks  
https://github.com/rails-api/active_model_serializers  

[こちらにあるように](https://github.com/rails-api/active_model_serializers#whats-happening-to-ams)、現在の安定バージョンである0.10.xのメンテナンスをほぼストップして、次のメジャーバージョンの開発に着手している。  
Alternativesを提示しているくらいなので、これからスタートするプロジェクトでは採用するべきじゃないかもしれない


# あとで試したいSerializer
- [jsonapi-rb](http://jsonapi-rb.org/)
  is a highly performant and modular JSON:API-only implementation. There's a vibrant community around it that has produced projects such as JSON:API Suite.
  
- [jsonapi-resources](https://github.com/cerebris/jsonapi-resources)
  is a popular resource-focused framework for implementing JSON:API servers.
