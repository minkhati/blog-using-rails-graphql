# module Types
#   class QueryType < Types::BaseObject
#     # Add root-level fields here.
#     # They will be entry points for queries on your schema.

#     # TODO: remove me
#     field :test_field, String, null: false,
#       description: "An example field added by the generator"
#     def test_field
#       "Hello World!"
#     end

#     field :posts, Types::PostType, null:false,
#       description: "A list of posts"
#     def posts
#       Post.all
#     end
#   end
# end

Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :test_field, types.String do 
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :posts, Types::PostType.to_list_type do 
    description "A list of posts"
    resolve ->(obj, args, ctx) {
      Post.all
    }
  end
end