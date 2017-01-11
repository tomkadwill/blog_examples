class PostPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

    def resolve
      if user.admin?
        scope.where(published: true)
      else
        scope.all
      end
    end
  end

  def index?
    user.admin?
  end
end
