package com.SpringAssignment.services;

import com.SpringAssignment.model.Trainer;
import java.util.List;

public interface TrainerServiceInterface {

    public List<Trainer> getAllTrainers();

    public void insertTrainer(Trainer t);

    public Trainer getTrainerbyId(int id);

    public void deleteTrainer(Trainer t);

    public void updateTrainer(Trainer t);

}
