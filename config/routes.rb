Rails.application.routes.draw do
    namespace 'api' do
        namespace 'version1' do
            resources :survivors
            resources :abduct
            resources :reports
        end
    end
    # get 'reports'
end
