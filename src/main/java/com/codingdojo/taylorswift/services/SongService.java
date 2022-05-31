package com.codingdojo.taylorswift.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;


import com.codingdojo.taylorswift.models.Song;
import com.codingdojo.taylorswift.repositories.SongRepository;

@Service
public class SongService {
	
	private final SongRepository songRepository;
	
	public SongService(SongRepository songRepository) {
	this.songRepository = songRepository;

	}
	
	public List<Song> allSongs(){
		return songRepository.findAll();
	}
	
	
	public Song findOne(Long id) {
		Optional<Song> optionalSong = songRepository.findById(id);
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		}else {
			return null;
		}

		
	}
	
	public List <Song>findCategory(String category) {
		List<Song> optionalSongCat = songRepository.findAllByCategory(category);
//		if(optionalSongCat.isPresent()) {
//			return optionalSongCat.get();
//		} else {
//			return null;
//		}
		return optionalSongCat;
	}
	
	public Song create(Song song) {
		return songRepository.save(song);
	}
	
	public Song update(Song song) {
		return songRepository.save(song);
	}
	
	public void delete(Long id) {
		songRepository.deleteById(id);
	}
	
	
	
	
	
	
	
}
