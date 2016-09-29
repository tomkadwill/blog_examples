class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
    @candidate_of_the_week = Candidate.candidate_of_the_week
  end
end
