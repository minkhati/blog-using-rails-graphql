# module Types
#   class MutationType < Types::BaseObject
#     field :createPost, mutation: Mutations::CreatePost
#     field :deletePost, mutation: Mutations::DeletePost
#     # TODO: remove me
#     field :test_field, String, null: false,
#       description: "An example field added by the generator"
#     def test_field
#       "Hello World"
#     end
#   end
# end

Types::MutationType = GraphQL::ObjectType.define do 
  name "Mutation"

  field :deletePost, Mutations::DeletePost.field
  field :upsertPost, Mutations::UpsertPost.field
end