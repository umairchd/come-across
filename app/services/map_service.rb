require 'net/http'
class MapService
    def self.get_map(latitude, longitude, options = {})
      api_key = 'AIzaSyC8GxGRY698_V5Ix-O-ohUcA4QEFdgj1_s'
      options = {
        zoom: 13,
        size: '600x300',
        maptype: 'roadmap',
        marker_color: 'red'
      }.merge(options)

      url = "https://maps.googleapis.com/maps/api/staticmap?center=#{latitude},#{longitude}&zoom=#{options[:zoom]}&size=#{options[:size]}&maptype=#{options[:maptype]}&markers=color:#{options[:marker_color]}%7C#{latitude},#{longitude}&key=#{api_key}"
      uri = URI.parse(url)
      response = Net::HTTP.get(uri)

      return response
    end
end
