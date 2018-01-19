# README

##### Create rails react webpacker monolith application :

```bash
rails new app-name --webpack=react --database=postgresql -T
```

##### Run application
```bash
bundle
rails db:create
rails db:migrate
rails db:seed
foreman start
```
