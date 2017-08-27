# lita-microsoft-teams

*_This gem is still in development_*

This is a RubyGem for a [Lita.io](https://www.lita.io) adapter to be used with [Microsoft Teams](https://products.office.com/en-us/microsoft-teams/group-chat-software) and their [Bot Framework](https://dev.botframework.com/). The motivation behind this adapter is motivated by Microsoft only providing a NodeJS and C# SDK for developing bots. This bot will require a little setup as detailed in the bot framework documentation. Register the bot with Bot Framework, get an AppID, and Token. Your bot will also require a publically available endpoint for Bot Framework to reach. 

### Design

Since Teams doesn't use Websockets, or a traditional connection similar to IRC, they use a web service model. The bot connects to the bot framework using REST calls, authenticates, and disconnects. The JWT is valid for a limited period of time, then must be renewed. The bot framework will connect to your bot and authenticate and send an activity to your bot. It is then up to your bot to track the activity id, sender, channel and other relevant information. Each side of the Bot connection will use SSL to establish secure HTTPS REST API Traffic. Then the bot will use OpenID to verify JWT sent by bot framework. 

## Installation

Add lita-microsoft-teams to your Lita instance's Gemfile:

``` ruby
gem "lita-microsoft-teams"
```

Details are located in the [Lita.io Plugin Usage](https://docs.lita.io/getting-started/plugins/).

## Configuration

Required Attributes:
* MICROSOFT-APP-ID 
* MICROSOFT-APP-PASSWORD

## Usage

TODO: Describe the plugin's features and how to use them.
