Search youtube via this simple ruby api

 - simple
 - no dependencies

Install
=======
    sudo gem install youtube_search
Or

    rails plugin install git://github.com/grosser/youtube_search.git


Usage
=====
    YoutubeSearch.search('boat').first
    {
      "title"=>"Killer Whale Imitates Boat Motor",
      "published"=>"2011-09-29T15:30:43.000Z",
      "id"=>"http://gdata.youtube.com/feeds/api/videos/0b2U5r7Jwkc",
      "video_id"=>"0b2U5r7Jwkc",
      "content"=>"Top YouTube Videos on ...",
      "updated"=>"2011-10-13T20:20:54.000Z",
      "raw" => <REXML::Element ... >,
      "embeddable" => true,
      ...
    }

page / per_page are supported

    YoutubeSearch.search('cats', :page => 10, :per_page => 4).first

and [standard youtube options](http://code.google.com/apis/youtube/2.0/developers_guide_protocol.html#Standard_parameters)

    YoutubeSearch.search('cats', 'time' => 'this_week', 'orderby' => 'viewCount').first

### I can haz iframe:

    # DISCLAIMER this iframe may steal 4 minutes of your life ;)
    id = YoutubeSearch.search('lolcats').first['video_id']
    %{<iframe src="http://www.youtube.com/embed/#{id}" width=640 height=480 frameborder=0></iframe>}

### Searching playlists
	YoutubeSearch.search_playlists('cats').first

### Retrieve videos by playlist ID

    videos = YoutubeSearch.playlist_videos('5F23DAF4BFE3D14C')

TODO
====
 - more detailed xml parsing (you can fetch everything via 'raw', but more defaults would be nice)
 - parse dates into ruby objects


Author
======

### [Contributors](http://github.com/grosser/youtube_search/contributors)
 - [David Gil](https://qoolife.com)
 - [Jim Jones](https://github.com/aantix)
 - [Sławek](https://github.com/sbogutyn)

[Michael Grosser](http://grosser.it)<br/>
michael@grosser.it<br/>
Hereby placed under public domain, do what you want, just do not hold me accountable...<br/>
[![Flattr](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=grosser&url=https://github.com/grosser/youtube_search&title=youtube_search&language=en_US&tags=github&category=software)
[![Build Status](https://secure.travis-ci.org/grosser/youtube_search.png)](http://travis-ci.org/grosser/youtube_search)
