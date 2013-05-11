require 'spec_helper'

describe UserAPI do
  it 'should be able to create a new user without using ActionController' do
    expect { post '/api/user', :user => { name: 'Goo', email: 'goo@goo.com' } }.to change{ User.count }.by(1)
  end
  it 'creates a new user when using actioncontroller' do
    expect { post '/api/user/actioncontroller', :user => { name: 'Goo', email: 'goo@goo.com' } }.to change{ User.count }.by(1)
  end
end
