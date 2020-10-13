local config = require("lapis.config")
local postgres_url = os.getenv('DATABASE_URL')

config("production", {
  port=os.getenv('PORT'),
  postgres={
  	host = os.getenv('DATABASE_HOST'),
    user = os.getenv('DATBASE_USER'),
    password = os.getenv('DATABASE_PASSWORD'),
    database = os.getenv('DATABASE_NAME')
  }
})
