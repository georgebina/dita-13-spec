<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Learning Map Domain                          -->
<!--  VERSION:   1.3a                                               -->
<!--  DATE:      October 2012                                      -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identfier or an 
      appropriate system identifier 
PUBLIC "-//OASIS//ELEMENTS DITA 1.3 Learning Map Domain//EN"
      Delivered as file "learningMapDomain.mod"                    -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for Learning Map Domain                -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             May 2007                                          -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2007, 2009, 2012.        -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--                                                               -->
<!--  16 Aug 2009: WEK Added learningContentComponentRef per TC    -->
<!--  07 Dec 2009: RDA combined @id, conref-atts, select-atts, and -->
<!--               localization-atts into a single ref to univ-atts-->
<!--                                                               -->
<!--  22 Oct 2012  DRB: Added learningObjectMapRef and             -->
<!--               learningGroupMapRef elements. Modified          -->
<!--               %learningGroup.content; to include them.        -->
<!--               Relocated with other learningMapDomain          -->
<!--               components within the DITA-OT test plugin       -->
<!--               org.dita.doctypes.learning                      -->
<!-- 																															 -->
<!-- 	13 Nov 2012	 DRB: Modified to include per-element attribute  -->
<!-- 							 entities for learningObjectMapRef and           -->
<!-- 							 learningGroupMapRef as recommended by the OASIS -->
<!-- 							 DITA Learning and Training Content              -->
<!--               Specialization SC. Specialization attributes    -->
<!--               moved into separate attlists. 									 -->
<!--                                                               -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                   SPECIALIZATION OF DECLARED ELEMENTS         -->
<!-- ============================================================= -->
<!ENTITY % learningObject              "learningObject">
<!ENTITY % learningOverviewRef         "learningOverviewRef">
<!ENTITY % learningPlanRef             "learningPlanRef">
<!ENTITY % learningContentRef          "learningContentRef">
<!ENTITY % learningContentComponentRef "learningContentComponentRef">
<!ENTITY % learningSummaryRef          "learningSummaryRef">
<!ENTITY % learningPreAssessmentRef    "learningPreAssessmentRef">
<!ENTITY % learningPostAssessmentRef   "learningPostAssessmentRef">
<!ENTITY % learningGroup               "learningGroup">

<!-- ============================================================= -->
<!-- DRB: 2012-10-22
Added to support learningObjectMapRef and learningGroupMapRef  -->  
<!ENTITY % learningObjectMapRef        "learningObjectMapRef">
<!ENTITY % learningGroupMapRef         "learningGroupMapRef">


<!ENTITY % topicref-atts-without-format 
             "collection-type 
                        (choice | 
                         family | 
                         sequence | 
                         unordered |
                         -dita-use-conref-target) 
                                  #IMPLIED
              type 
                        CDATA 
                                  #IMPLIED
              processing-role
                        (normal |
                         resource-only |
                         -dita-use-conref-target)
                                  #IMPLIED
              scope 
                        (external | 
                         local | 
                         peer | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              locktitle 
                        (no | 
                         yes | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              linking 
                        (none | 
                         normal | 
                         sourceonly | 
                         targetonly |
                         -dita-use-conref-target) 
                                  #IMPLIED
              toc 
                        (no | 
                         yes | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              print 
                        (no | 
                         printonly | 
                         yes | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              search 
                        (no | 
                         yes | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              chunk 
                        CDATA 
                                  #IMPLIED
  "
>

<!ENTITY % learningDomain-mapref-attributes
             "navtitle 
                        CDATA 
                                  #IMPLIED
              href 
                        CDATA 
                                  #IMPLIED
              keyref 
                        CDATA 
                                  #IMPLIED
              keys 
                        CDATA 
                                  #IMPLIED
              query 
                        CDATA 
                                  #IMPLIED
              copy-to 
                        CDATA 
                                  #IMPLIED
              outputclass 
                        CDATA 
                                  #IMPLIED
              format 
                        CDATA 
                                  'ditamap'
              %topicref-atts-without-format;
              %univ-atts;"
>

<!-- ============================================================= -->
<!-- DRB: 2012-10-22
Added to support learningObjectMapRef and learningGroupMapRef  -->  


<!-- ============================================================= -->


<!-- Attributes that are common to each topicref specialization in this domain -->
<!ENTITY % learningDomain-topicref-atts-no-chunk
             "navtitle
                        CDATA
                                  #IMPLIED
              href
                        CDATA
                                  #IMPLIED
              keyref
                        CDATA
                                  #IMPLIED
              keys
                        CDATA
                                  #IMPLIED
              query
                        CDATA
                                  #IMPLIED
              copy-to
                        CDATA
                                  #IMPLIED
              outputclass
                        CDATA
                                  #IMPLIED
              scope
                        (external |
                         local | 
                         peer | 
                         -dita-use-conref-target)
                                  #IMPLIED
              processing-role
                        (normal |
                         resource-only |
                         -dita-use-conref-target)
                                  #IMPLIED
              linking
                        (targetonly|
                         sourceonly|
                         normal|
                         none | 
                         -dita-use-conref-target)
                                  #IMPLIED
              locktitle
                        (yes|
                         no | 
                         -dita-use-conref-target)
                                  #IMPLIED
              toc
                        (yes|
                         no | 
                         -dita-use-conref-target)
                                  #IMPLIED
              print
                        (yes|
                         no | 
                         printonly |
                         -dita-use-conref-target)
                                   #IMPLIED
              search
                        (yes|
                         no | 
                         -dita-use-conref-target)
                                   #IMPLIED
              %univ-atts;"
>

<!ENTITY % learningDomain-topicref-atts "
              %learningDomain-topicref-atts-no-chunk;
              chunk
                        CDATA
                                  #IMPLIED 
">

<!ENTITY % learningObjectComponent-topicref-atts "
              %learningDomain-topicref-atts-no-chunk;
              chunk
                        CDATA
                                  'to-content' 
">


<!-- ============================================================= -->
<!-- DRB: 2012-10-22
Modified to support learningObjectMapRef and learningGroupMapRef -->

<!ENTITY % learningGroup.content
   "((%topicmeta;)?, 
    (%learningPlanRef;)?, 
    ((%learningOverviewRef;) |
    (%learningPreAssessmentRef;))*,
    ((%learningObject;) |
    (%learningObjectMapRef;) |
    (%learningGroup;) |
    (%learningGroupMapRef;))*,
    ((%learningPostAssessmentRef;) |
    (%learningSummaryRef;))* )"
>

<!-- ============================================================= -->

<!ENTITY % learningGroup.attributes
             "%learningDomain-topicref-atts;
              collection-type
                        (choice|
                         unordered|
                         sequence|
                         family | 
                         -dita-use-conref-target)
                                   #IMPLIED
              type
                        CDATA
                                  #IMPLIED
              format
                        CDATA
                                  #IMPLIED
">


<!ELEMENT learningGroup    %learningGroup.content;>
<!ATTLIST learningGroup    %learningGroup.attributes;>


<!-- ============================================================= -->
<!-- DRB: 2012-10-22
Added to support learningObjectMapRef and learningGroupMapRef  -->

<!ENTITY % learningGroupMapRef.content
                       "((%topicmeta;)?)">
<!ENTITY % learningGroupMapRef.attributes
						"%learningDomain-mapref-attributes;"
>
<!ELEMENT learningGroupMapRef %learningGroupMapRef.content;>
<!ATTLIST learningGroupMapRef %learningGroupMapRef.attributes;>


<!ENTITY % learningObjectMapRef.content
                        "((%topicmeta;)?)">
<!ENTITY % learningObjectMapRef.attributes
						"%learningDomain-mapref-attributes;"
>
<!ELEMENT learningObjectMapRef %learningObjectMapRef.content;>
<!ATTLIST learningObjectMapRef %learningObjectMapRef.attributes;>

<!-- ============================================================= -->


<!ENTITY % learningObject.content
                       "((%topicmeta;)?,
                         (%learningPlanRef;)?,
                         ((%learningOverviewRef;) |
                          (%learningPreAssessmentRef;))*,
                         (%learningContentRef;)+,
                         ((%learningPostAssessmentRef;) |
                          (%learningSummaryRef;))*)"
>
<!ENTITY % learningObject.attributes
             "%learningDomain-topicref-atts;
              collection-type
                        (choice|
                         unordered|
                         sequence|
                         family | 
                         -dita-use-conref-target)
                                   #IMPLIED
              type
                        CDATA
                                  #IMPLIED
              format
                        CDATA
                                  #IMPLIED
">
<!ELEMENT learningObject    %learningObject.content;>
<!ATTLIST learningObject    %learningObject.attributes;>


<!ENTITY % learningPlanRef.content
                       "((%topicmeta;)?)"
>
<!ENTITY % learningPlanRef.attributes
             "%learningObjectComponent-topicref-atts;
              type
                        CDATA
                                  'learningPlan'
              format
                        CDATA
                                  'dita'"
>
<!ELEMENT learningPlanRef    %learningPlanRef.content;>
<!ATTLIST learningPlanRef    %learningPlanRef.attributes;>

<!ENTITY % learningOverviewRef.content
                       "((%topicmeta;)?)"
>
<!ENTITY % learningOverviewRef.attributes
             "%learningObjectComponent-topicref-atts;
              type
                        CDATA
                                  'learningOverview'
              format
                        CDATA
                                  'dita'"
>
<!ELEMENT learningOverviewRef    %learningOverviewRef.content;>
<!ATTLIST learningOverviewRef    %learningOverviewRef.attributes;>


<!ENTITY % learningSummaryRef.content
                       "((%topicmeta;)?)"
>
<!ENTITY % learningSummaryRef.attributes
             "%learningObjectComponent-topicref-atts;
              type
                        CDATA
                                  'learningSummary'
              format
                        CDATA
                                  'dita'"
>
<!ELEMENT learningSummaryRef    %learningSummaryRef.content;>
<!ATTLIST learningSummaryRef    %learningSummaryRef.attributes;>


<!ENTITY % learningContentRef.content
                       "((%topicmeta;)?,
                         (%learningContentComponentRef;)*)"
>
<!ENTITY % learningContentRef.attributes
             "%learningDomain-topicref-atts-no-chunk;
              type
                        CDATA
                                  #IMPLIED
              format
                        CDATA
                                  'dita'
              chunk
                        CDATA
                                  'to-content'
                                  "
>
<!ELEMENT learningContentRef    %learningContentRef.content;>
<!ATTLIST learningContentRef    %learningContentRef.attributes;>

<!ENTITY % learningContentComponentRef.content
                       "((%topicmeta;)?,
                         (%learningContentComponentRef;)*)"
>
<!ENTITY % learningContentComponentRef.attributes
             "%learningDomain-topicref-atts;
              type
                        CDATA
                                  #IMPLIED
              format
                        CDATA
                                  'dita'"
>
<!ELEMENT learningContentComponentRef    %learningContentComponentRef.content;>
<!ATTLIST learningContentComponentRef    %learningContentComponentRef.attributes;>


<!ENTITY % learningPreAssessmentRef.content
                       "((%topicmeta;)?)"
>
<!ENTITY % learningPreAssessmentRef.attributes
             "%learningObjectComponent-topicref-atts;
              type
                        CDATA
                                  'learningAssessment'
              format
                        CDATA
                                  'dita'"
>
<!ELEMENT learningPreAssessmentRef    %learningPreAssessmentRef.content;>
<!ATTLIST learningPreAssessmentRef    %learningPreAssessmentRef.attributes;>


<!ENTITY % learningPostAssessmentRef.content
                       "((%topicmeta;)?)"
>
<!ENTITY % learningPostAssessmentRef.attributes
             "%learningObjectComponent-topicref-atts;
              type
                        CDATA
                                  'learningAssessment'
              format
                        CDATA
                                  'dita'"
>
<!ELEMENT learningPostAssessmentRef    %learningPostAssessmentRef.content;>
<!ATTLIST learningPostAssessmentRef    %learningPostAssessmentRef.attributes;>


<!ATTLIST learningObject %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningObject ">
<!ATTLIST learningGroup %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningGroup ">
    
    
<!-- ============================================================= -->


<!ATTLIST learningPlanRef %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningPlanRef ">
<!ATTLIST learningOverviewRef %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningOverviewRef ">
<!ATTLIST learningContentRef %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningContentRef ">
<!ATTLIST learningContentComponentRef %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningContentComponentRef ">
<!ATTLIST learningSummaryRef %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningSummaryRef ">
<!ATTLIST learningPreAssessmentRef %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningPreAssessmentRef ">
<!ATTLIST learningPostAssessmentRef %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningPostAssessmentRef ">

<!-- ============================================================= -->
<!-- DRB: 2012-10-22
Added to support learningObjectMap and learningGroupMap -->

<!ATTLIST learningObjectMapRef %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningObjectMapRef ">    
<!ATTLIST learningGroupMapRef %global-atts;
    class CDATA "+ map/topicref learningmap-d/learningGroupMapRef ">
    
<!-- =======================End of learning map domain module =============================== -->