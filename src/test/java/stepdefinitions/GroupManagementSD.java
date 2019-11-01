package stepdefinitions;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import net.thucydides.core.annotations.Steps;
import steps.CommonSteps;
import steps.GroupSteps;

public class GroupManagementSD {

    private static final Logger logger = LoggerFactory.getLogger(GroupManagementSD.class);

    @Steps
   GroupSteps groupsteps;
    CommonSteps commonSteps;


}
