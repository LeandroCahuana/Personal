package pe.edu.vallegrande.project.service.impl;

import pe.edu.vallegrande.project.model.Inventory;
import pe.edu.vallegrande.project.repository.InventoryRepository;
import pe.edu.vallegrande.project.service.InventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import lombok.extern.slf4j.Slf4j;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
public class InventoryServiceImpl implements InventoryService {

    private final InventoryRepository inventoryRepository;

    @Autowired
    public InventoryServiceImpl(InventoryRepository inventoryRepository) {
        this.inventoryRepository = inventoryRepository;
    }

    @Override
    public List<Inventory> findAll() {
        log.info("Listando Datos: ");
        return inventoryRepository.findAll();
    }

    @Override
    public Optional<Inventory> findById(Long id) {
        log.info("Listando Datos por ID: ");
        return inventoryRepository.findById(id);
    }

    @Override
    public Inventory save(Inventory inventory) {
        log.info("Registrondo Datos: " + inventory.toString());
        inventory.setState("A");
        return inventoryRepository.save(inventory);
    }

    @Override
    public Inventory update(Inventory inventory) {
        log.info("Editando Datos: " + inventory.toString());
        inventory.setState("A");
        return inventoryRepository.save(inventory);
    }

}