package com.SpringAssignment.services;

import com.SpringAssignment.model.Trainer;
import com.SpringAssignment.repos.TrainerRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TrainerServiceImpl implements TrainerServiceInterface {

    @Autowired
    TrainerRepository trainerRepository;

    @Override
    public List<Trainer> getAllTrainers() {
        return trainerRepository.findAll();
    }

    @Override
    public void insertTrainer(Trainer t) {
        trainerRepository.save(t);
    }

    @Override
    public void deleteTrainer(Trainer t) {
        trainerRepository.delete(t);
    }

    @Override
    public Trainer getTrainerbyId(int id) {
        return trainerRepository.getOne(id);
    }
    
    
    // This is the way we managed the update of a Trainer
    @Override
    public void updateTrainer(Trainer t) {
        Trainer test = trainerRepository.findById(t.getTrainerid()).get();
        test.setTrainerid(t.getTrainerid());
        test.setFirstname(t.getFirstname());
        test.setLastname(t.getLastname());
        test.setSubject(t.getSubject());
        trainerRepository.save(test);
    }
}
