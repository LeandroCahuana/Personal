package pe.edu.vallegrande.project.rest;

import pe.edu.vallegrande.project.model.Inventory;
import pe.edu.vallegrande.project.service.InventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/v1/api/inventory")
public class InventoryRest {

    private final InventoryService inventoryService;

    @Autowired
    public InventoryRest(InventoryService inventoryService) {
        this.inventoryService = inventoryService;
    }
    
    @GetMapping
    public List <Inventory> findAll(){
        return inventoryService.findAll();
    }

    @GetMapping("/{id}")
    public Optional<Inventory> findById(@PathVariable Long id) {
        return inventoryService.findById(id);
    }

    @PostMapping("/save")
    public Inventory save(@RequestBody Inventory inventory) {
        return inventoryService.save(inventory);
    }

    @PutMapping("/update")
    public Inventory update(@RequestBody Inventory inventory) {
        return inventoryService.update(inventory);
    }

}
