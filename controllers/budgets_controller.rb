require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/budget')
require_relative('../models/transaction')
require_relative('../models/tag')
require_relative('../models/merchant')
also_reload('../models/*')


get '/budgets' do
  @budgets = Budget.all
  erb(:"budgets/index")
end
#
# get '/budgets/new' do
#   @budgets = Budget.all
#   @merchants = Merchant.all
#   @tags = Tag.all
#   @budgets = Budget.all
#   erb(:"budgets/new")
# end
#
# post '/budgets' do
#   Budget.new(params).save
#   redirect to '/budgets'
# end
#
# get '/budgets/:id' do
#   @budget = Budget.find(params[:id])
#   erb(:"budgets/show")
# end
#
# get '/budgets/:id/edit' do
#   @budget = Budget.find(params[:id])
#   @budgets = Budget.all
#   @merchants = Merchant.all
#   @tags = Tag.all
#   @budgets = Budget.all
#   erb(:"budgets/edit")
# end
#
# post '/budgets/:id' do
#   budget = Budget.new(params)
#   budget.update
#   redirect to "/budgets/#{params[:id]}"
# end
#
# post '/budgets/:id/delete' do
#   budget = Budget.find(params[:id])
#   budget.delete
#   redirect to '/budgets'
# end
