package com.headcount.headcount.kelas;

import com.headcount.headcount.kelas.Kelas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "api/v1/kelas")
public class KelasRestController {

    private final KelasRepository kelasRepository;

    @Autowired
    public KelasRestController(KelasRepository kelasRepository) {
        this.kelasRepository = kelasRepository;
    }


    @GetMapping
    public List<Kelas> getKelasList(){
        return kelasRepository.findAll();
    }

    @PostMapping(path = "/checkExistence")
    public int checkExistence(@RequestBody Kelas kelas){

        Kelas kelasObj = kelasRepository.findMatch(kelas.getName());

        if(kelasObj != null){
            return 1;
        }else{
            return 0;
        }
    }

    @PostMapping
    public String saveKelas(@RequestBody Kelas kelas){
        kelasRepository.save(kelas);

        return "Data kelas berjaya disimpan";
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/{id}")
    public Kelas getKelas(@PathVariable("id")int id){
        Kelas kelas = kelasRepository.findById(id);

        return kelas;
    }

    @PutMapping
    public String updateKelas(@RequestBody Kelas kelas){

        kelasRepository.save(kelas);

        return "Data kelas berjaya disunting";
    }

    @DeleteMapping(path = "/{id}")
    public String deleteKelas(@PathVariable("id") int id){

        kelasRepository.deleteById(id);

        return "Data kelas berjaya dipadam";
    }



}
