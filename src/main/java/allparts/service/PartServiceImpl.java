package allparts.service;

import allparts.dao.PartDAO;
import allparts.dao.PartDAOImpl;
import allparts.model.Part;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PartServiceImpl implements PartService {
    private PartDAO partDAO;

    @Autowired
    public void setPartDAO(PartDAO partDAO) {
        this.partDAO = partDAO;
    }

    @Override
    @Transactional
    public List<Part> allParts(int page) {
        return partDAO.allParts(page);
    }

    @Override
    @Transactional
    public void add(Part part) {
        partDAO.add(part);
    }

    @Override
    @Transactional
    public void delete(Part part) {
        partDAO.delete(part);
    }

    @Override
    @Transactional
    public void edit(Part part) {
        partDAO.edit(part);
    }

    @Override
    @Transactional
    public Part getById(int id) {
        return partDAO.getById(id);
    }

    @Override
    @Transactional
    public int partsCount() {
        return partDAO.partsCount();
    }

    @Override
    @Transactional
    public Part findPart(String namePart) {
        return partDAO.findPart(namePart);
    }

    @Override
    @Transactional
    public List<Part> sortPart(boolean condition) {
        return partDAO.sortPart(condition);
    }
}
