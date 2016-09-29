class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
    @candidate_of_the_week = Candidate.find_by(name: 'blah') || NullCandidate.new
  end

  def search
  end
end
