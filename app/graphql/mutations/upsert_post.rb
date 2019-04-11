# module Mutations
#   class CreatePost < GraphQL::Schema::RelayClassicMutation
#     # TODO: define return fields
#     # field :post, Types::PostType, null: false

#     # TODO: define arguments
#     # argument :name, String, required: true

#     # TODO: define resolve method
#     # def resolve(name:)
#     #   { post: ... }
#     # end
#   end
# end


Mutations::UpsertPost = GraphQL::Relay::Mutation.define do
  name "UpsertPost"
  
  return_field :post, Types::PostType

  input_field :title, !types.String
  input_field :content, !types.String
  input_field :id, types.ID 
    
  resolve ->(obj, args, ctx) {
    post = Post.find_or_create_by(id: args[:id])
    post = post.update(title: args[:title], content: args[:content])
    { post: post }
  }  
end