module OauthTokenVerifier
  class Configuration
    attr_accessor :enabled_providers, :google, :vk, :facebook
    ProviderSettings = Struct.new(:fields_mapping)

    def initialize
      @enabled_providers = []
      @google = ProviderSettings.new({
        first_name: 'given_name',
        last_name: 'family_name'
      })
    end
  end
end
