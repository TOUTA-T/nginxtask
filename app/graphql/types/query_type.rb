Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :blog, !Types::BlogType do
    resolve -> (_obj, _args, ctx) {
      ctx[:blog]
    }
  end
end

# module Types
#   class QueryType < Types::BaseObject
#     field :blogs, [Types::BlogType], null:false
#     def blogs
#       Post.all
#     end
#
#     field :blog, Types::PostType, null: false do
#     argument :id, Int, required: false
#     end
#     def blog(id:)
#      Blog.find(id)
#     end
#   end
# end
