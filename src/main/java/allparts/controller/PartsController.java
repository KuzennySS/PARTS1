package allparts.controller;

import allparts.model.Part;
import allparts.service.PartService;
import allparts.service.PartServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class PartsController {
    private int page;
    private PartService partService;

    @Autowired
    public void setPartService(PartService partService) {
        this.partService = partService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView allParts(@RequestParam(defaultValue = "1") int page) {
        List<Part> parts = partService.allParts(page);
        int partsCount = partService.partsCount();
        int pagesCount = (partsCount + 9)/10;
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("parts");
        modelAndView.addObject("page", page);
        modelAndView.addObject("partList", parts);
        modelAndView.addObject("partsCount", partsCount);
        modelAndView.addObject("pagesCount", pagesCount);
        // calculate number computer you can collect
        List<Part> partsForCollect = partService.sortPart(true);
        int countComputer = Integer.MAX_VALUE;
        for (Part partCollect: partsForCollect) {
            if (partCollect.getCount() < countComputer) countComputer = partCollect.getCount();
        }
        modelAndView.addObject("countComputer", countComputer);
        this.page = page;
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editPage(@PathVariable("id") int id) {
        Part part = partService.getById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editPage");
        modelAndView.addObject("part", part);
        return modelAndView;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public ModelAndView editPart(@ModelAttribute("part") Part part) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/?page=" + this.page);
        partService.edit(part);
        return modelAndView;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView addPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editPage");
        return modelAndView;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView addPart(@ModelAttribute("part") Part part) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/?page=" + this.page);
        partService.add(part);
        return modelAndView;
    }

    @RequestMapping(value="/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deletePart(@PathVariable("id") int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/?page=" + this.page);
        Part part = partService.getById(id);
        partService.delete(part);
        return modelAndView;
    }

    @RequestMapping(value = "/find", method = RequestMethod.GET)
    public ModelAndView findPart(@ModelAttribute("namePart") String namePart) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("findPart");
        Part part = partService.findPart(namePart);
        modelAndView.addObject("findPart", part);
        return modelAndView;
    }

    @RequestMapping(value = "/sort", method = RequestMethod.GET)
    public ModelAndView sortPart(@ModelAttribute("need") boolean need) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sortParts");
        List<Part> parts = partService.sortPart(need);
        modelAndView.addObject("sortedParts", parts);
        return modelAndView;
    }
}
