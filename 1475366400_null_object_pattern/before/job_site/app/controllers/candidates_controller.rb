class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
    @candidate_of_the_week = Candidate.find_by(name: 'nobody')
  end
end
