package com.SpringAssignment.controllers;

import com.SpringAssignment.model.Trainer;
import com.SpringAssignment.repos.TrainerRepository;
import com.SpringAssignment.services.TrainerServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TrainerController {

    @Autowired
    TrainerServiceInterface trainerServiceInterface;
    @Autowired
    TrainerRepository trainerRepository;

    //Method to get all Trainers from Database
    @GetMapping("/getAllTrainers")
    public String getAllTrainers(ModelMap mm) {
        mm.addAttribute("TrainerList", trainerServiceInterface.getAllTrainers());
        return "view";
    }

    //Method to delete Trainer from Database
    @PostMapping("/delete")
    public String deleteTrainer(@RequestParam("TrainerID") String trainerId, ModelMap mm) {
        int id = Integer.parseInt(trainerId);
        Trainer t = trainerServiceInterface.getTrainerbyId(id);
        trainerServiceInterface.deleteTrainer(t);
        mm.addAttribute("message", "Trainer has been deleted");
        return getAllTrainers(mm);
    }

    //Method to get an empty object into a Spring Form 
    @GetMapping("/preCreate")
    public String createTrainer(ModelMap mm) {
        mm.addAttribute("newTrainer", new Trainer());
        return "create";
    }

    //Method to save the new Trainer you have just created from the form above
    @PostMapping("/saveNew")
    public String saveNewTrainer(@ModelAttribute("newTrainer") Trainer t, ModelMap mm) {
        trainerServiceInterface.insertTrainer(t);
        mm.addAttribute("message", "Trainer has been created");
        return "create";
    }

    //Method to get a form where you update a Trainer
    @PostMapping("/preUpdateTrainer")
    public String preUpdateTrainer(@RequestParam("TrainerID") String trainerid, ModelMap mm) {
        int updateTrainerById = Integer.parseInt(trainerid);
        Trainer t = trainerRepository.findById(updateTrainerById).get();
        mm.addAttribute("Trainer", t);
        return "update";
    }

    //Method to update the Trainer with a verification message
    @PostMapping("/updateTrainer")
    public String updateTrainer(@ModelAttribute("updateTrainer") Trainer t, ModelMap mm) {
        trainerServiceInterface.updateTrainer(t);
        mm.addAttribute("message", "Trainer has been updated");
        return getAllTrainers(mm);
    }
}
