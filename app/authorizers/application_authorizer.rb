class ApplicationAuthorizer < Authority::Authorizer

  def self.default(adjective, user)
    false
  end

  def updatable_by?(user)
    resource.user_id == user.id
  end

  def deletable_by?(user)
    resource.user_id == user.id
  end

end