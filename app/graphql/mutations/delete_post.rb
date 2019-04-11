# module Mutations
#   class DeletePost < GraphQL::Schema::RelayClassicMutation
#     # TODO: define return fields
#     # field :post, Types::PostType, null: false

#     return_field :message, types.String

#     # TODO: define arguments
#     # argument :name, String, required: true
#     input_field :id, !types.ID
     
#     # TODO: define resolve method
#     # def resolve(name:)
#     #   { post: ... }
#     # end
    
#     resolve ->(obj, args, ctx) {
#       post = Post.find_by(id: args[:id])
#       post.destroy!

#       { message: "Post has been deleted" }
#     }
#   end
# end


Mutations::DeletePost = GraphQL::Relay::Mutation.define do
  name "DeletePost"
  
  return_field :message, types.String

  input_field :id, !types.ID
    
  resolve ->(obj, args, ctx) {
    post = Post.find_by(id: args[:id])
    post.destroy!
    
    { message: "Post has been deleted" }
  }  
end