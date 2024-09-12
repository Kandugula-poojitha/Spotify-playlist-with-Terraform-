resource "spotify_playlist" "terraform-playlist1" {
  name        = "terraform-Playlist1"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = ["131yybV7A3TmC34a0qE8u8"]
    
  }

  data "spotify_search_track" "by_artist" {
  artist = "Dolly Parton"
  #  album = "Jolene"
  #  name  = "Early Morning Breeze"
}
resource "spotify_playlist" "terraform-playlist2" {
  name        = "terraform-playlist2"
 
tracks = [
    data.spotify_search_track.by_artist.tracks[0].id,
    data.spotify_search_track.by_artist.tracks[1].id,
    data.spotify_search_track.by_artist.tracks[2].id,
  ]
}
