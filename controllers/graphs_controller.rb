class GraphsController < ApplicationController
  get '/' do
    image = Gchart.line(
      :size => '600x500',
      :title => 'Challenges in Web Development',
      :bg => 'efefef',
      :legend => ['Difficulty of Code'],
      :data => [10, 30, 120, 45, 72]
    )
    erb :test, locals: { image: image }
  end

end
