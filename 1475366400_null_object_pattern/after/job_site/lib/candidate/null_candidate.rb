class NullCandidate
  def name
    'N/A'
  end

  def email
    'N/A'
  end

  private

  def method_missing(*args, &block)
    self
  end
end
