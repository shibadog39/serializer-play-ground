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

## jb
速い

fast_jsonapiとの比較
```
user:2 post/user: 10
Comparison:
                  jb:      806.4 i/s
        fastjson-api:      470.1 i/s - 1.72x  (± 0.00) slower

user:2 post/user: 100
Comparison:
                  jb:      163.2 i/s
        fastjson-api:       83.9 i/s - 1.95x  (± 0.00) slower

user:2 post/user: 1000
Comparison:
                  jb:       23.6 i/s
        fastjson-api:       12.5 i/s - 1.89x  (± 0.00) slower

user:2 post/user: 10000
Comparison:
                  jb:        2.9 i/s
        fastjson-api:        0.9 i/s - 3.40x  (± 0.00) slower
```


# あとで試したいSerializer
## SimpleAMS
https://github.com/vasilakisfil/SimpleAMS
[こちら](https://vasilakisfil.social/blog/2020/01/20/modern-ruby-serializers/) に開発した経緯とか想いがまとまっている

## jb
https://github.com/amatsuda/jb
A simple and fast JSON API template engine for Ruby on Rails

## jsonapi-rb
http://jsonapi-rb.org/
is a highly performant and modular JSON:API-only implementation. There's a vibrant community around it that has produced projects such as JSON:API Suite.

## jsonapi-resources
https://github.com/cerebris/jsonapi-resources
is a popular resource-focused framework for implementing JSON:API servers.
