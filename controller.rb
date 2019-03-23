require('sinatra')
require('sinatra/contrib/all')
require_relative('models/budget')
require_relative('models/transaction')
require_relative('models/tag')
require_relative('models/merchant')
also_reload('./models/*')

get '/students' do
  @transactions = Transaction.all
  erb(:index)
end

# get '/students/new' do
#   @houses = House.all
#   erb(:new)
# end
#
# post '/students' do
#   Student.new(params).save
#   redirect to '/students'
# end
#
# get '/students/:id' do
#   @student = Student.find(params['id'])
#   erb(:show)
# end
#
# get '/students/:id/edit' do
#   @houses = House.all
#   @student = Student.find(params['id'])
#   erb(:edit)
# end
#
# post '/students/:id' do
#   student = Student.new(params)
#   student.update
#   redirect to "/students/#{params['id']}"
# end
#
# post '/students/:id/delete' do
#   student = Student.find(params['id'])
#   student.delete
#   redirect to '/students'
# end
