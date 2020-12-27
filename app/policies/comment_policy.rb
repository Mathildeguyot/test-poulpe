class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.task.user == user
  end

  def destroy?
    record.task.user == user
  end
end
