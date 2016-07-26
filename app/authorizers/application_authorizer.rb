class ApplicationAuthorizer < Authority::Authorizer

  def self.default(adjective, user)
    false
  end

  def updatable_by?(user)
<<<<<<< HEAD
    resource.user_id == user.id
  end

  def deletable_by?(user)
    resource.user_id == user.id
=======
    resource.user == user
  end

  def deletable_by?(user)
    resource.user == user
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
  end

end