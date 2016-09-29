#TODO: move me
class NullCandidate
  def name
    'N/A'
  end

  def email
    'N/A'
  end

  private

  # This allows missing methods to be chained
  # without raising a NilClass error
  def method_missing(*args, &block)
    self
  end
end
