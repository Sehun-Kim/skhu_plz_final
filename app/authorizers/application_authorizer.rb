class ApplicationAuthorizer < Authority::Authorizer

  def self.default(adjective, user, options={})
    user.has_role? :admin
  end

  def updatable_by?(user)
    resource.user_id == user.id || user.has_role?(:admin)
  end

  def deletable_by?(user)
    resource.user_id == user.id || user.has_role?(:admin)
  end


end