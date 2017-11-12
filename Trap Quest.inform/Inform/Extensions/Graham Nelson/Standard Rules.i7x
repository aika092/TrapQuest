Version 2/090402 of the Standard Rules by Graham Nelson begins here.

"The Standard Rules, included in every project, define the basic framework
of kinds, actions and phrases which make Inform what it is."

Document C8ComplexDeterminer at doc100 "6.15" "All, each and every".
Document ACTIONS C22APUnknown C22APWithNoParticiple C22NonActionIn kind_actionname at doc103 "7.1" "Actions".
Document rules_instead at doc104 "7.2" "Instead rules".
Document ph_continueaction ph_stopaction rules_before at doc105 "7.3" "Before rules".
Document C16ActionNotSpecific C16ActionTooSpecific C16UnknownTryAction1 C16UnknownTryAction2 ph_try ph_trysilently at doc106 "7.4" "Try and try silently".
Document rules_after at doc107 "7.5" "After rules".
Document C22APWithDisjunction C22APWithImmiscible at doc110 "7.8" "Rules applying to more than one action".
Document var_noun at doc112 "7.10" "The noun and the second noun".
Document C22APWithBadWhen C22NonActionInPresenceOf at doc114 "7.12" "In the presence of, and when".
Document C24GoingWithoutObject C24GoingWrongKind at doc116 "7.14" "Going by, going through, going with".
Document C24NamedAPWithActor NAP at doc117 "7.15" "Kinds of action".
Document ph_say at doc12 "2.2" "Making rules".
Document ph_change_dep at doc122 "8.1" "Change of values that vary".
Document var_prompt at doc123 "8.2" "Changing the command prompt".
Document phs_surroundings var_sl at doc124 "8.3" "Changing the status line".
Document ph_changeexit ph_changenoexit at doc126 "8.5" "Change of properties with values".
Document ph_move at doc128 "8.7" "Moving things".
Document ph_movebackdrop ph_updatebackdrop at doc129 "8.8" "Moving backdrops".
Document C5TooMuchQuotedText C5UnendingComment C5UnendingQuote C5WordTooLong C8EnigmaticPronoun C8EnigmaticThey at doc13 "2.3" "Punctuation".
Document ph_changeplayer_dep at doc130 "8.9" "Moving the player".
Document ph_remove at doc131 "8.10" "Removing things from play".
Document C14CantChangeKind C14CantForceCalling C14CantForceExistence C14CantForceGeneralised C14CantForceRelation C16BadNow1 C16BadNow2 C16BadNow3 C22RedefinedNow ph_now at doc132 "8.11" "Now...".
Document ph_decrease ph_decrement ph_increase ph_increment at doc133 "8.12" "Increasing and decreasing".
Document C22CalledThe C22CalledWithDash at doc136 "8.15" "Calling names".
Document ph_firstheld ph_holder ph_nextheld at doc138 "8.17" "Looking at containment by hand".
Document ph_randombetween ph_randomchance ph_seed at doc139 "8.18" "Randomness".
Document C14RandomImpossible ph_randomdesc at doc140 "8.19" "Random choices of things".
Document ROOMPLAYBEGINS rules_wpb at doc142 "9.1" "When play begins".
Document ph_awardpoints_dep var_score at doc143 "9.2" "Awarding points".
Document ph_end ph_enddeath_dep ph_ended ph_endeddeath_dep ph_endedvictory_dep ph_endfinally ph_endfinallysaying ph_endgamesaying_dep ph_endsaying ph_endvictory_dep ph_finallyended ph_inprogress_dep ph_notended ph_notfinallyended ph_over_dep ph_resume ph_resumegame_dep rules_wpe at doc145 "9.4" "When play ends".
Document C16NumberOfTurns rules_et at doc146 "9.5" "Every turn".
Document kind_time var_time at doc147 "9.6" "The time of day".
Document phs_timewords at doc148 "9.7" "Telling the time".
Document ph_durationhours ph_durationmins at doc149 "9.8" "Approximate times, lengths of time".
Document C20BadTitleSentence C6HeadingOverLine C6HeadingStopsBeforeEndOfLine HEADINGS at doc15 "2.5" "Headings".
Document ph_itisafter_dep ph_itisbefore_dep ph_shiftafter ph_shiftbefore ph_timeafter ph_timebefore at doc150 "9.9" "Comparing and shifting times".
Document ph_hourspart ph_minspart at doc151 "9.10" "Calculating times".
Document C10AtWithoutTime C22UnusedTimedEvent TIMEDEVENTS ph_attime ph_timefromnow ph_turnsfromnow at doc152 "9.11" "Future events".
Document C24PTAPTooComplex at doc153 "9.12" "Actions as conditions".
Document C12DescSubordinatePast C12PastActionCalled C13PastSubordinate C24PTAPMakesCallings C24PastCallings C24PastTableEntries C24PastTableLookup C6NonPresentTense at doc154 "9.13" "The past and perfect tenses".
Document SCENESINTRO kind_scene at doc158 "10.1" "Introduction to scenes".
Document C19ScenesBadCondition C19ScenesDisallowCalled C19ScenesNotPlay C19ScenesOnly C19ScenesOversetEnd C19ScenesUnknownEnd at doc159 "10.2" "Creating a scene".
Document ph_scenetimesincebegan ph_scenetimesinceended ph_scenetimewhenbegan ph_scenetimewhenended at doc160 "10.3" "Using the Scene index".
Document ph_hasended ph_hashappened ph_hasnotended ph_hasnothappened at doc161 "10.4" "During scenes".
Document LINKINGSCENES at doc162 "10.5" "Linking scenes together".
Document PHRASES ph_nothing at doc168 "11.1" "What are phrases?".
Document C22BareTo at doc169 "11.2" "The phrasebook".
Document C22AdjacentTokens C22BadTypeIndication C22PhraseTooLong C22SaySlashed C22TokenMisunderstood C22TokenWithEmptyBrackets C22TokenWithNestedBrackets C22TokenWithStipulations C22TokenWithoutCloseBracket C22TokenWithoutOpenBracket at doc170 "11.3" "Pattern matching".
Document ph_showme at doc171 "11.4" "The showme phrase".
Document C22TruthStateToDecide kind_truthstate ph_consents ph_indarkness ph_whether at doc172 "11.5" "Conditions and questions".
Document C16WrongThen C8IfOutsidePhrase ph_if ph_if_dep ph_unless at doc173 "11.6" "If".
Document C16CantUseOutsideStructure C16EndWithoutBegin C16PossibleUnterminatedIf C16PossibleUnterminatedUnless C16WrongEnd C22BeginWithoutEnd C22BlockNestingTooDeep C6BothBlockSyntaxes C6EmptyIndentedBlock C6MisalignedIndentation C6NotInOldSyntax C6RunOnsInTabbedRoutine at doc174 "11.7" "Begin and end".
Document C16BlockWithinNonblock C16CaseValueMismatch C16CaseValueNonConstant C16DoubleOtherwise C16OtherwiseIfAfterOtherwise C16OtherwiseInNonIf C16OtherwiseWithoutIf C16WrongOtherwise C16WrongOtherwise2 C16WrongOtherwise3 C6MisalignedCase C6MisalignedOtherwise C6MisarrangedOtherwise C6NonCaseInIf ph_otherwise ph_switch at doc175 "11.8" "Otherwise".
Document ph_while ph_while_dep at doc176 "11.9" "While".
Document C14CalledInRepeat ph_repeat at doc177 "11.10" "Repeat".
Document C22BadRepeatDomain ph_runthrough at doc178 "11.11" "Repeat running through".
Document C16CantUseOutsideLoop ph_break ph_next at doc179 "11.12" "Next and break".
Document C25TestBadRequirements C25TestCommandTooLong C25TestContainsUndo C25TestDoubleWith C25TestDuplicate C25TestMultiWord C25UnknownInternalTest at doc18 "2.8" "The TEST command".
Document ph_stop at doc180 "11.13" "Stop".
Document C22NotAPhraseOption C22NotTheOnlyPhraseOption C22PhraseOptionsExclusive C22SayWithPhraseOptions C22TooManyPhraseOptions ph_listcontents at doc181 "11.14" "Phrase options".
Document C22TooManyLocals ph_let ph_letdefault at doc182 "11.15" "Let and temporary variables".
Document ph_no ph_yes at doc183 "11.16" "New conditions, new adjectives".
Document C22RedundantReturnKOV C22ReturnWrongKind C22UnknownValueToDecide ph_decideon at doc184 "11.17" "Phrases to decide other things".
Document ph_enumafter ph_enumbefore ph_enumfirst ph_enumlast at doc185 "11.18" "The value after and the value before".
Document ARSUMMARY at doc188 "12.2" "How actions are processed".
Document var_person_asked at doc189 "12.3" "Giving instructions to other people".
Document rules_per at doc190 "12.4" "Persuasion".
Document rules_fail var_reason at doc191 "12.5" "Unsuccessful attempts".
Document C24ActionAlreadyExists C24ActionBothValues C24ActionClauseUnknown C24ActionMisapplied C24GrammarMismatchesAction C24MatchedAsTooLong C24MultiwordPastParticiple NEWACTIONS ph_requirescarried ph_requirescarried2 ph_requireslight ph_requirestouch ph_requirestouch2 at doc193 "12.7" "New actions".
Document C14ActionVarsPastTense C24ActionVarAnd C24ActionVarOverspecific C24ActionVarUnknownKOV C24ActionVarValue C24BadMatchingSyntax C24BadOptionalAPClause at doc196 "12.10" "Action variables".
Document C22DuplicateRuleName C22RuleWithComma at doc198 "12.12" "Check rules for actions by other people".
Document C5BogusExtension at doc20 "2.10" "Installing extensions".
Document OUTOFWORLD at doc201 "12.15" "Out of world actions".
Document rules_ri at doc202 "12.16" "Reaching inside and reaching outside rules".
Document var_person_reaching at doc204 "12.18" "Changing reachability".
Document visibility at doc205 "12.19" "Changing visibility".
Document C24SetStoredAction kind_storedaction ph_actionof ph_actionpart ph_actorpart ph_currentaction ph_involves ph_nounpart ph_secondpart ph_trystored ph_trystoredsilently at doc206 "12.20" "Stored actions".
Document VERBS at doc208 "13.1" "Sentence verbs".
Document C7ExtInadequateVM C7ExtMalformedVM C7ExtMisidentified C7ExtMisidentifiedEnds C7ExtMiswordedBeginsHere C7ExtVersionMalformed C7IncludeExtQuoted C7IncludeExtWithoutBy at doc21 "2.11" "Including extensions".
Document RELATIONS at doc210 "13.3" "What are relations?".
Document C17BadKOVForRelationProperty C9BothOneAndMany C9CantCallBoth C9CantCallLeft C9CantCallRight C9FRFUnavailable C9OneOrVariousWithWhen C9OneToOneMiscalled C9RelMalformed C9RelatedKindsUnknown C9RelationExists at doc212 "13.5" "Making new relations".
Document ph_showrelation at doc214 "13.7" "Relations in groups".
Document C9DuplicateVerbs1 C9DuplicateVerbs2 C9DuplicateVerbs3 C9PrepositionConjugated C9PrepositionLong C9PresentPluralTwice C9VerbMalformed C9VerbRedefinesBe C9VerbRelationUnknown C9VerbRelationVague C9VerbUnknownMeaning C9VerbWithoutParts at doc216 "13.9" "Defining new assertion verbs".
Document C6CanHave at doc217 "13.10" "Defining new prepositions".
Document ph_nextstep ph_numbersteps at doc218 "13.11" "Indirect relations".
Document C22BadRelationCondition C9Unassertable2 at doc219 "13.12" "Relations which express conditions".
Document C21UONotNumerical C21UnknownUseOption at doc22 "2.12" "Use options".
Document ph_ifleft ph_ifright ph_leftdomain ph_leftlookup ph_leftlookuplist ph_rightdomain ph_rightlookup ph_rightlookuplist at doc220 "13.13" "Relations involving values".
Document ph_letrelation at doc222 "13.15" "Temporary relations".
Document C17RelationWithBadProperty C17RelationWithEitherOrProperty C8BadRelation C8EveryWrongSide C8KindRelatedToValue C8PropForBadKOV at doc224 "13.17" "Review of Chapter 13: Relations".
Document C10ElementOverflow C10EvenOverflow-G C10ZMachineOverflow C12LiteralOverflow C14CantEquateValues C14InequalityFailed kind_number ph_cuberoot ph_divide ph_minus ph_nearest ph_plus ph_remainder ph_squareroot ph_times at doc226 "14.2" "Numbers".
Document C10LPBuiltInKOV C10LPEnumeration C10LPNotKOV C10NegationForbidden C10NegationInternal at doc227 "14.3" "Units".
Document C10DuplicateUnitSpec at doc228 "14.4" "Multiple notations".
Document C10LPCantScaleTwice C10LPCantScaleYet C10LPTooLittleAccuracy at doc229 "14.5" "Scaling and equivalents".
Document C10LPElementTooLarge C10LPNotAllNamed C10LPTooComplicated C10LPTooManyElements C10LPWithoutElement at doc233 "14.9" "Notations including more than one number".
Document C10BadLPNameOption C10BadLPPartOption C10LPFirstOptional C10LPMultipleOptional at doc234 "14.10" "The parts of a number specification".
Document C16TotalEitherOr C16TotalTableColumn ph_total at doc236 "14.12" "Totals".
Document C21EquationBadArithmetic C21EquationBadTarget C21EquationDimensionPower C21EquationDoesntEquate C21EquationEquatesBadly C21EquationEquatesMultiply C21EquationIncomparable C21EquationInsoluble C21EquationLeadingZero C21EquationMisnamed C21EquationMisnumbered C21EquationMispunctuated C21EquationNonIntPower C21EquationOperatorUnrecognised C21EquationSymbolBadSub C21EquationSymbolEqualsKOV C21EquationSymbolMalformed C21EquationSymbolMisdeclared C21EquationSymbolMissing C21EquationSymbolNonNumeric C21EquationSymbolNonValue C21EquationSymbolSpurious C21EquationSymbolVague C21EquationSymbolWrongKOV C21EquationTokenUnrecognised C21EquationTooComplex EQUATIONS ph_letequation at doc237 "14.13" "Equations".
Document C10BadLPEquivalent C10BadLPOffset C10MultiplyingNonKOVs C15DimensionNotBaseKOV C15DimensionRedundant C15DimensionsInconsistent C15NonDimensional C15UnitSequenceOverflow C16BadArithmetic at doc239 "14.15" "Multiplication of units".
Document C21BadICLIdentifier at doc24 "2.14" "Limits and the Settings panel".
Document C20TableCoincidesWithKind C20TableColumnAlready C20TableColumnArticle C20TableColumnBrackets C20TableColumnEmptyLists C20TableContinuationAddsRows C20TableDefiningObject C20TableDescriptionEntry C20TableEntryGeneric C20TableIncompatibleEntry C20TableKindlessColumn C20TableMisnamed C20TableNameAmbiguous C20TableNameDuplicate C20TableOfBuiltInKind C20TableOfExistingKind C20TableOfQuantifiedKind C20TablePlayerEntry C20TableRowFull C20TableTooManyColumns C20TableUndefined C20TableUnknownEntry C20TableVariableEntry C20TableWithBlankNames C20TableWithUnobviousColumn C20TableWithUnobviousColumn2 C20TableWithoutRows TABLES at doc241 "15.1" "Laying out tables".
Document ph_numrows at doc242 "15.2" "Looking up entries".
Document C12NoRowSelected ph_chooserandomrow ph_chooserow ph_chooserowwith at doc245 "15.5" "Choosing rows".
Document ph_repeattable ph_repeattablecol ph_repeattablecolreverse ph_repeattablereverse at doc246 "15.6" "Repeating through tables".
Document ph_thereis ph_thereisno at doc247 "15.7" "Blank entries".
Document ph_blankout ph_blankoutcol ph_blankoutrow ph_blankouttable ph_chooseblankrow ph_deleteentry_dep ph_numblank ph_numfilled at doc250 "15.10" "Adding and removing rows".
Document ph_sortcolumn ph_sortcolumnreverse ph_sortrandom at doc251 "15.11" "Sorting".
Document kind_tablename at doc255 "15.15" "Varying which table to look at".
Document C20TableDefiningNothing C20TableDefiningTheImpossible at doc256 "15.16" "Defining things with tables".
Document C20TableNotContinuation at doc258 "15.18" "Table continuations".
Document C20TableAmendmentMisfit C20TableAmendmentMismatch at doc259 "15.19" "Table amendments".
Document C25BizarreToken C25ComplexUnderstand C25LiteralPunctuation C25NontextualTable C25NontextualUnderstand C25NotNewCommand C25NotOldCommand C25ObsoleteHeldTokens C25OldVerbUsage C25OverComplexToken C25TextTokenRestricted C25TextlessMistake C25UnderstandAsActivity C25UnderstandAsBadValue C25UnderstandAsCompoundText C25UnderstandCommaCommand C25UnderstandCommandWhen C25UnderstandEmptyText C25UnderstandMismatch C25UnderstandVague C25UnknownToken C25UnparsableKind C25UseTextNotTopic C25UseThingNotObject someone_token at doc260 "16.1" "Understand".
Document C25GrammarIllFounded C25ThreeValuedLine C25TooManyAliases C25TooManyGrammarLines at doc261 "16.2" "New commands for old grammar".
Document things_token at doc263 "16.4" "Standard tokens of grammar".
Document text_token at doc264 "16.5" "The text token".
Document var_understood at doc268 "16.9" "Understanding kinds of value".
Document C14CantAssertAdjective C14CantAssertNegatedEverywhere C14CantAssertNegatedRelations C14CantAssertNonKind C14CantAssertQuantifier C6NegatedVerb1 C6TwoLikelihoods C8NoSuchVerb C8NoSuchVerbComma at doc27 "2.17" "Review of Chapter 2: The Source Text".
Document C25UnderstandAsQualified C25UnderstandPluralValue at doc270 "16.11" "Understanding values".
Document C25OverAmbitiousSlash C25SlashedCommand at doc271 "16.12" "This/that".
Document C25MixedOutcome C25TwoValuedToken at doc272 "16.13" "New tokens".
Document C25BadReferringProperty C25BadUnderstandProperty C25BadUnderstandPropertyAs C25UnknownUnderstandProperty C25UnknownUnpermittedProperty at doc274 "16.15" "Understanding things by their properties".
Document C25GrammarBadRelation C25GrammarObjectlessRelation C25GrammarValueRelation at doc275 "16.16" "Understanding things by their relations".
Document C25BadWhen at doc276 "16.17" "Context: understanding when".
Document ph_setpronouns ph_setpronouns_dep at doc277 "16.18" "Changing the meaning of pronouns".
Document rules_dtpm at doc278 "16.19" "Does the player mean...".
Document ACTIVITIES C24BadActivityName kind_activity at doc282 "17.1" "What are activities?".
Document C22BadWhenWhile at doc285 "17.4" "While clauses".
Document EXTACTIVITIES ph_carryout ph_carryoutwith ph_continueactivity at doc286 "17.5" "New activities".
Document C24ActivityVarAnd C24ActivityVarOverspecific C24ActivityVarUnknownKOV C24ActivityVarValue C24ActivityVariableNameless at doc287 "17.6" "Activity variables".
Document ph_abandonactivity ph_abandonactivitywith ph_beginactivity ph_beginactivitywith ph_endactivity ph_endactivitywith ph_handlingactivity ph_handlingactivitywith at doc288 "17.7" "Beginning and ending activities manually".
Document C8DescriptionsEquated C8SameKindEquated MAP kind_room at doc29 "3.2" "Rooms and the map".
Document act_con var_particular at doc290 "17.9" "Deciding the concealed possessions of something".
Document act_pn ph_omit at doc291 "17.10" "Printing the name of something".
Document act_ppn at doc292 "17.11" "Printing the plural name of something".
Document act_pan at doc293 "17.12" "Printing a number of something".
Document act_lc ph_group ph_groupart ph_grouptext at doc294 "17.13" "Listing contents of something".
Document act_gt at doc295 "17.14" "Grouping together something".
Document act_details at doc296 "17.15" "Printing room description details of something".
Document act_toodark at doc297 "17.16" "Printing a refusal to act in the dark".
Document act_nowdark at doc298 "17.17" "Printing the announcement of darkness".
Document act_nowlight at doc299 "17.18" "Printing the announcement of light".
Document act_darkname at doc300 "17.19" "Printing the name of a dark room".
Document act_darkdesc at doc301 "17.20" "Printing the description of a dark room".
Document act_csl at doc302 "17.21" "Constructing the status line".
Document act_wpa at doc303 "17.22" "Writing a paragraph about".
Document act_lni at doc304 "17.23" "Listing nondescript items of something".
Document act_pld at doc305 "17.24" "Printing the locale description of something".
Document act_cnlo at doc306 "17.25" "Choosing notable locale objects for something".
Document act_plp at doc307 "17.26" "Printing a locale paragraph about".
Document act_ds ph_placecontentsinscope ph_placeinscope at doc308 "17.27" "Deciding the scope of something".
Document act_clarify at doc309 "17.28" "Clarifying the parser's choice of something".
Document C19ExistingRegion C19RegionInTwoRegions C19RegionRelation REGIONS kind_region at doc31 "3.4" "Regions and the index map".
Document act_which at doc310 "17.29" "Asking which do you mean".
Document act_smn at doc311 "17.30" "Supplying a missing noun/second noun".
Document act_reading kind_snippet ph_changecommand ph_cutsnippet ph_rejectcommand ph_replacesnippet ph_snippetdoesnotinclude ph_snippetdoesnotmatch ph_snippetincludes ph_snippetmatches var_command at doc312 "17.31" "Reading a command".
Document act_implicitly at doc313 "17.32" "Implicitly taking something".
Document act_parsererror at doc314 "17.33" "Printing a parser error".
Document act_all at doc315 "17.34" "Deciding whether all includes".
Document act_banner phs_banner at doc316 "17.35" "Printing the banner text".
Document act_obit at doc317 "17.36" "Printing the player's obituary".
Document act_amuse at doc318 "17.37" "Amusing a victorious player".
Document act_startvm at doc319 "17.38" "Starting the virtual machine".
Document C11KindsIncompatible C19BothRoomAndSupporter C19CantContainAndSupport C19MiseEnAbyme KINDS at doc32 "3.5" "Kinds".
Document C23RulebookWithAt C23RulebookWithDefinition C23RulebookWithTo RULEBOOKS kind_rule kind_rulebook at doc321 "18.1" "On rules".
Document C22BadRulePreamble C22BadRulePreambleWhen C22RuleWithDefiniteArticle C8RuleWithoutColon at doc323 "18.3" "New rules".
Document C23BadRulePlacementNegation C23ImproperRulePlacement C23NoSuchRulePlacement C23NoSuchRulePlacement2 C23NoSuchRulebookPlacement C23PlaceWithMissingRule C23UnspecifiedRulebookPlacement RLISTING at doc324 "18.4" "Listing rules explicitly".
Document NEWRULEBOOKS ph_follow at doc327 "18.7" "New rulebooks".
Document ph_followfor at doc328 "18.8" "Basis of a rulebook".
Document C23RulebookVariableAnd C23RulebookVariableBadKind C23RulebookVariableTooSpecific C23RulebookVariableVague at doc329 "18.9" "Rulebook variables".
Document C23BadDefaultOutcome C23DefaultOutcomeTwice ph_failed ph_fails ph_nodecision ph_succeeded ph_succeeds at doc330 "18.10" "Success and failure".
Document C16MisplacedRulebookOutcome C22WrongEndToPhrase C23BadOutcomeClarification C23DefaultNamedOutcomeTwice C23DefaultOutcomeAlready C23DuplicateOutcome C23NonOutcomeProperty C23TooManyRulebookOutcomes ph_rulebookoutcome at doc331 "18.11" "Named outcomes".
Document ph_producedby ph_producedbyfor ph_succeedswith at doc332 "18.12" "Rulebooks producing values".
Document ph_abide ph_abideanon ph_abidefor ph_consider ph_considerfor at doc333 "18.13" "Consider and abide".
Document rules_proc at doc334 "18.14" "Procedural rules".
Document ph_accept_dep ph_ignore_dep ph_moveafter_dep ph_movebefore_dep ph_reinstate_dep ph_reject_dep ph_restore_dep ph_substitute_dep at doc335 "18.15" "Phrases concerning rules".
Document rules_internal at doc337 "18.17" "Two rulebooks used internally".
Document C18PropertyNotPermitted at doc34 "3.7" "Properties depend on kind".
Document kind_indexedtext at doc340 "19.1" "Ordinary text and indexed text".
Document ph_charnum ph_linenum ph_numchars ph_numlines ph_numparas ph_numpwords ph_numupwords ph_numwords ph_paranum ph_pwordnum ph_upwordnum ph_wordnum at doc342 "19.3" "Characters, words, punctuated words, unpunctuated words, lines, paragraphs".
Document ph_inlower ph_inupper ph_lowercase ph_sentencecase ph_titlecase ph_uppercase at doc343 "19.4" "Upper and lower case letters".
Document ph_exactlymatches ph_matches ph_nummatches at doc344 "19.5" "Matching and exactly matching".
Document ph_exactlymatchesre ph_matchesre ph_matchtext ph_nummatchesre ph_subexpressiontext at doc345 "19.6" "Regular expression matching".
Document ph_replace ph_replacechar ph_replaceline ph_replacepara ph_replacepword ph_replacepwordin ph_replacere ph_replaceupword ph_replaceword ph_replacewordin at doc347 "19.8" "Replacements".
Document kind_listof at doc349 "20.1" "Lists and entries".
Document C16CantLetEmptyList C20BadConstantListEntry C20IncompatibleConstantListEntry C20NonconstantConstantListEntry at doc350 "20.2" "Constant lists".
Document phs_listbraced phs_listdef phs_listindef at doc351 "20.3" "Saying lists of values".
Document ph_islistedin ph_isnotlistedin ph_repeatlist at doc352 "20.4" "Testing and iterating over lists".
Document ph_addatentry ph_addlistatentry ph_addlisttolist ph_addtolist ph_rementries ph_rementry ph_remfromlist ph_remlistfromlist at doc353 "20.5" "Building lists".
Document ph_altermultipleobjectlist ph_listofdesc ph_multipleobjectlist at doc354 "20.6" "Lists of objects".
Document ph_reverselist ph_rotatelist ph_rotatelistback ph_sortlist ph_sortlistproperty ph_sortlistpropertyreverse ph_sortlistrandom ph_sortlistreverse at doc356 "20.8" "Sorting, reversing and rotating lists".
Document ph_numberentries at doc357 "20.9" "Accessing entries in a list".
Document ph_changelength ph_extend ph_truncate ph_truncatefirst ph_truncatelast at doc358 "20.10" "Lengthening or shortening a list".
Document C13EverywhereMisapplied C14CantChangeEverywhere C19EverywhereNonBackdrop kind_backdrop at doc36 "3.9" "Backdrops".
Document kind_description ph_valuematch at doc361 "21.2" "Descriptions as values".
Document ph_applied0 ph_applied1 ph_applied2 ph_applied3 ph_apply0 ph_apply1 ph_apply2 ph_apply3 at doc362 "21.3" "Phrases as values".
Document ph_appliedlist ph_filter ph_reduction at doc364 "21.5" "Map, filter and reduce".
Document C6HeadingBadVM at doc372 "22.3" "Virtual machines and story file formats".
Document FIGURES kind_figurename at doc373 "22.4" "Gathering the figures".
Document C26PictureDuplicate C26PictureNotTextual at doc374 "22.5" "Declaring and previewing the figures".
Document ph_displayfigure at doc375 "22.6" "Displaying the figures".
Document SOUNDS kind_soundname at doc376 "22.7" "Recorded sounds".
Document C26SoundDuplicate C26SoundNotTextual ph_playsf at doc377 "22.8" "Declaring and playing back sounds".
Document ph_figureid ph_soundid at doc378 "22.9" "Some technicalities about figures and sounds".
Document EFILES at doc379 "22.10" "Files".
Document C17TwoAppearances C8TextWithoutSubject at doc38 "3.11" "Two descriptions of things".
Document C26BadFileIFID C26BadFileOwner C26FilenameDuplicate C26FilenameNotTextual C26FilenameUnsafe kind_externalfile at doc380 "22.11" "Declaring files".
Document ph_fileexists ph_readtable ph_writetable at doc381 "22.12" "Writing and reading tables to external files".
Document ph_appendtext ph_saytext ph_writetext at doc382 "22.13" "Writing, reading and appending text to files".
Document ph_fileready ph_markfilenotready ph_markfileready at doc383 "22.14" "Exchanging files with other programs".
Document C20BadEpisode at doc385 "23.2" "Bibliographic data".
Document LCARDS at doc387 "23.4" "The Library Card".
Document C20NoSuchPublicRelease release_files at doc389 "23.6" "The Release button and the Materials folder".
Document C19BadMapCell C19BothWaysDoor C19DoorInThirdRoom C19DoorOverconnected C19DoorToNonRoom C19DoorUnconnected C19RoomMissingDoor kind_door ph_backside ph_directionofdoor ph_frontside ph_othersideof at doc39 "3.12" "Doors".
Document C20ReleaseAlong at doc390 "23.7" "The Joy of Feelies".
Document release_cover at doc391 "23.8" "Cover art".
Document release_booklet at doc392 "23.9" "An introductory booklet".
Document release_website at doc393 "23.10" "A website".
Document release_interpreter at doc394 "23.11" "A playable web page".
Document C19RoomInIgnoredSource at doc397 "23.14" "Republishing existing works of IF".
Document release_solution at doc398 "23.15" "Walkthrough solutions".
Document release_card release_source at doc399 "23.16" "Releasing the source text".
Document C19NoStartRoom C19StartsOutsideRooms at doc4 "1.4" "The Go! button".
Document C19MapBadRubric C19MapDirectionClue C19MapFromNonRoom C19MapHintUnknown C19MapLevelMisnamed C19MapNonLateral C19MapPlacement C19MapPlacementDirection C19MapSettingOfUnknown C19MapSettingTooLong C19MapSettingTypeFailed C19MapSettingUnknown C19MapToNonRoom C19MapUnknownColour C19MapUnknownOffset C19MapUnknownOffsetBase MAPHINTS at doc400 "23.17" "Improving the index map".
Document EPSMAP at doc401 "23.18" "Producing an EPS format map".
Document kind_device at doc41 "3.14" "Devices and descriptions".
Document EXTENSIONS at doc418 "25.1" "The status of extensions".
Document SRULES at doc419 "25.2" "The Standard Rules".
Document C6ExtBeginsAfterEndsHere C6ExtEndsWithoutBegins C6ExtMultipleBeginsHere C6ExtMultipleEndsHere C6ExtNoBeginsHere C6ExtNoEndsHere at doc421 "25.4" "A simple example extension".
Document C7ExtNoVersion C7ExtVersionTooLow phs_compextcredits phs_extcredits at doc422 "25.5" "Version numbering".
Document C6HeadingInPlaceOfUnincluded C6HeadingInPlaceOfUnknown C6UnequalHeadingInPlaceOf at doc425 "25.8" "Extensions can interact with other extensions".
Document C8ImplicationCertain C8ImplicationValueProperty at doc429 "25.12" "Implications".
Document kind_vehicle at doc43 "3.16" "Vehicles and pushable things".
Document C22BadInlineExpansion C22BadInlineTag C22InlineRule C22InlineTooLong C22NonInlineBeginEnd C5UnendingI6 at doc431 "25.14" "Defining phrases in Inform 6".
Document ph_testuseoption_dep at doc434 "25.17" "Making and testing use options".
Document C11BadObjectTranslation at doc437 "25.20" "Inform 6 objects and classes".
Document C17NonPropertyTranslated C17TranslatedTwice C20NonQuantityTranslated C20QuantityTranslatedAlready C24TranslatesActionAlready C24TranslatesNonAction C2TranslatedToNonIdentifier C2TranslatedUnknownCategory at doc438 "25.21" "Inform 6 variables, properties, actions, and attributes".
Document C25GrammarTranslatedAlready at doc439 "25.22" "Inform 6 Understand tokens".
Document kind_person at doc44 "3.17" "Men, women and animals".
Document C10UnicodeAlready C10UnicodeNonLiteral C10UnicodeOutOfRange at doc441 "25.24" "Naming Unicode characters".
Document C21BadI6Inclusion C21BeforeTheLibrary C21WhenDefiningUnknown C27NoSuchPart C27NoSuchTemplate at doc442 "25.25" "The template layer".
Document C2LabelNamespaceTooLong at doc445 "25.28" "Invocation labels, counters and storage".
Document kind_player's at doc48 "3.21" "The player's holdall".
Document C19PartOfRoom C19RoomOrDoorAsPart at doc50 "3.23" "Parts of things".
Document ph_in_dep ph_locationof at doc52 "3.25" "The location of something".
Document C19DirectionTooLong C19ImproperlyMadeDirection C19NamelessDirection C6TooManyDirections kind_direction at doc53 "3.26" "Directions".
Document NEWKINDS at doc55 "4.1" "New kinds".
Document C5PluralIsQuoted C5PluralOfQuoted at doc58 "4.4" "Plural assertions".
Document KINDSVALUE at doc59 "4.5" "Kinds of value".
Document C8ValueCantHaveProperties C8ValueCantHaveVProperties at doc60 "4.6" "Properties again".
Document C16EitherOrAsValue C8MiscellaneousEOProblem C8NonObjectCanBe C8QualifiedCanBe C8ThisIsEitherOr at doc61 "4.7" "New either/or properties".
Document C16PropertyOfKind C16PropertyOfNonProperty C17BadProvides C17PropertyUninitialisable C25BadVisibilityWhen C6PropertyCalledArticle C6PropertyCalledPresence C6PropertyNameForbidden C8PropertyKindClashes C8PropertyKindUnknown C8PropertyKindVague C8PropertyTooSpecific C8RedundantThatVaries at doc62 "4.8" "New value properties".
Document C8EitherOnThree at doc64 "4.10" "Conditions of things".
Document ph_defaultvalue at doc65 "4.11" "Default values of kinds".
Document C12BadVariableKind1 C15EmptyKind VARIABLES var_location at doc66 "4.12" "Values that vary".
Document C8TooManyDuplicates at doc67 "4.13" "Duplicates".
Document C8AssemblyLoop C8AssemblyRegress C8ComplexEvery at doc68 "4.14" "Assemblies and body parts".
Document C12TSWithComma C12TSWithPunctuation at doc72 "5.1" "Text with substitutions".
Document phs_apostrophe phs_bracket phs_closebracket phs_quotemark at doc73 "5.2" "How Inform reads quoted text".
Document phs_A phs_The phs_a phs_the phs_value at doc74 "5.3" "Text which names things".
Document phs_numwords phs_s at doc75 "5.4" "Text with numbers".
Document phs_Alistof phs_Thelistof phs_alistof phs_alistofconts phs_contents_dep phs_isalistof phs_islistof phs_isthelistof phs_listof phs_thelistof at doc76 "5.5" "Text with lists".
Document C22SayEndIfWithoutIf C22SayIfNested C22SayOtherwiseWithoutIf phs_elseif phs_elseunless phs_endif phs_endunless phs_if phs_otherwise phs_unless at doc77 "5.6" "Text with variations".
Document C22ComplicatedSayStructure C22ComplicatedSayStructure2 C22ComplicatedSayStructure3 C22ComplicatedSayStructure4 C22ComplicatedSayStructure5 phs_cycling phs_decreasing phs_firsttime phs_oneof phs_or phs_order phs_purelyrandom phs_random phs_sticky phs_stopping phs_thenpurelyrandom phs_thenrandom at doc78 "5.7" "Text with random alternatives".
Document ph_breakpending phs_clarifbreak phs_condparabreak phs_linebreak phs_nolinebreak phs_parabreak phs_runparaon phs_runparaonsls at doc79 "5.8" "Line breaks and paragraph breaks".
Document phs_bold phs_fixedspacing phs_italic phs_roman phs_varspacing at doc80 "5.9" "Text with type styles".
Document C16MidTextUnicode C16SayUnicode phs_unicode at doc82 "5.11" "Unicode characters".
Document ph_boxed at doc83 "5.12" "Displaying quotations".
Document DESCRIPTIONS ph_numberof at doc86 "6.1" "What are descriptions?".
Document C22DefinitionBadCondition C22DefinitionWithoutCondition C9AdjDomainSlippery C9AdjDomainSurreal C9AdjDomainUnknown C9ArticleAsAdjective at doc89 "6.4" "Defining new adjectives".
Document C17ComparativeMisapplied C17GradingCalled C17GradingMisphrased C17GradingNonLiteral C17GradingUnknownProperty C17GradingUnless C17GradingWrongKOV C17MultiwordGrading at doc92 "6.7" "Comparatives".
Document C16OutOfPlay at doc95 "6.10" "Existence and there".
Document ph_bestroute ph_bestroutelength ph_bestroutethrough ph_bestroutethroughlength ph_doordirof ph_roomdirof ph_roomordoor at doc99 "6.14" "Adjacent rooms and routes through the map".

Use ineffectual translates as (- ; -).

Use interactive fiction language elements.

Use MAX_ARRAYS of 1500.
Use MAX_CLASSES of 200.
Use MAX_VERBS of 255.
Use MAX_LABELS of 10000.
Use MAX_ZCODE_SIZE of 100000.
Use MAX_STATIC_DATA of 180000.
Use MAX_PROP_TABLE_SIZE of 200000.
Use MAX_INDIV_PROP_TABLE_SIZE of 20000.
Use MAX_STACK_SIZE of 65536.
Use MAX_SYMBOLS of 20000.
Use MAX_EXPRESSION_NODES of 256.

Use dynamic memory allocation of at least 8192 translates as
	(- Constant DynamicMemoryAllocation = {N}; -).
Use maximum indexed text length of at least 1024 translates as
	(- Constant IT_MemoryBufferSize = {N}+3; -).

Use dynamic memory allocation of at least 8192.

Use maximum things understood at once of at least 100 translates as
	(- Constant MATCH_LIST_WORDS = {N}; -).

Use maximum things understood at once of at least 100.

Use American dialect translates as (- Constant DIALECT_US; -).
Use the serial comma translates as (- Constant SERIAL_COMMA; -).
Use full-length room descriptions translates as (- Constant I7_LOOKMODE = 2; -).
Use abbreviated room descriptions translates as (- Constant I7_LOOKMODE = 3; -).
Use memory economy translates as (- Constant MEMORY_ECONOMY; -).
Use authorial modesty translates as (- Constant AUTHORIAL_MODESTY; -).
Use no scoring translates as (- Constant NO_SCORING; -).
Use command line echoing translates as (- Constant ECHO_COMMANDS; -).
Use undo prevention translates as (- Constant PREVENT_UNDO; -).
Use predictable randomisation translates as (- Constant FIX_RNG; -).
Use fast route-finding translates as (- Constant FAST_ROUTE_FINDING; -).
Use slow route-finding translates as (- Constant SLOW_ROUTE_FINDING; -).
Use numbered rules translates as (- Constant NUMBERED_RULES; -).
Use telemetry recordings translates as (- Constant TELEMETRY_ON; -).
Use no deprecated features translates as (- Constant NO_DEPRECATED_FEATURES; -).
Use VERBOSE room descriptions translates as (- Constant DEFAULT_VERBOSE_DESCRIPTIONS; -).
Use BRIEF room descriptions translates as (- Constant DEFAULT_BRIEF_DESCRIPTIONS; -).
Use SUPERBRIEF room descriptions translates as (- Constant DEFAULT_SUPERBRIEF_DESCRIPTIONS; -).

Part SR1 - The Physical World Model

Section SR1/0 - Language

The verb to relate (he relates, they relate, he related, it is related,
he is relating) implies the universal relation.

The verb to provide (he provides, they provide, he provided, it is provided,
he is providing) implies the provision relation.

The verb to be in implies the reversed containment relation.
The verb to be inside implies the reversed containment relation.
The verb to be within implies the reversed containment relation.
The verb to be held in implies the reversed containment relation.
The verb to be held inside implies the reversed containment relation.

The verb to contain (he contains, they contain, he contained, it is contained,
he is containing) implies the containment relation.
The verb to be contained in implies the reversed containment relation.

The verb to be on implies the reversed support relation.
The verb to be on top of implies the reversed support relation.

The verb to support (he supports, they support, he supported, it is supported,
he is supporting) implies the support relation.
The verb to be supported on implies the reversed support relation.

The verb to incorporate (he incorporates, they incorporate, he incorporated,
it is incorporated, he is incorporating) implies the incorporation relation.
The verb to be part of implies the reversed incorporation relation.
The verb to be a part of implies the reversed incorporation relation.
The verb to be parts of implies the reversed incorporation relation.

The verb to enclose (he encloses, they enclose, he enclosed, it is enclosed,
he is enclosing) implies the enclosure relation.

The verb to carry (he carries, they carry, he carried, it is carried, he is
carrying) implies the carrying relation.
The verb to hold (he holds, they hold, he held, it is held, he is holding)
implies the holding relation.
The verb to wear (he wears, they wear, he wore, it is worn, he is wearing)
implies the wearing relation.

Definition: a thing is worn if the player is wearing it.
Definition: a thing is carried if the player is carrying it.
Definition: a thing is held if the player is holding it.

The verb to be able to see (he is seen) implies the visibility relation.
The verb to be able to touch (he is touched) implies the touchability relation.

Definition: Something is visible rather than invisible if the player can see it.
Definition: Something is touchable rather than untouchable if the player can touch it.

The verb to conceal (he conceals, they conceal, he concealed, it is concealed,
he is concealing) implies the concealment relation.
Definition: Something is concealed rather than unconcealed if the holder of it conceals it.

Definition: Something is on-stage rather than off-stage if I6 routine "OnStage"
	makes it so (it is indirectly in one of the rooms).

The verb to be greater than implies the numerically-greater-than relation.
The verb to be less than implies the numerically-less-than relation.
The verb to be at least implies the numerically-greater-than-or-equal-to relation.
The verb to be at most implies the numerically-less-than-or-equal-to relation.

Section SR1/1 - Primitive Kinds

A room is a kind. [1]
A thing is a kind. [2]
A direction is a kind. [3]
A door is a kind of thing. [4]
A container is a kind of thing. [5]
A supporter is a kind of thing. [6]
A backdrop is a kind of thing. [7]
The plural of person is people. The plural of person is persons.
A person is a kind of thing. [8]
A region is a kind. [9]

An object has a text called specification.
An object has a text called indefinite appearance text.
An object has a value called variable initial value.

An object has a text called printed name.
An object has a text called printed plural name.
An object has a text called an indefinite article.
An object can be plural-named or singular-named. An object is usually singular-named.
An object can be proper-named or improper-named. An object is usually improper-named.

Section SR1/2 - Rooms

The specification of room is "Represents geographical locations, both indoor
and outdoor, which are not necessarily areas in a building. A player in one
room is mostly unable to sense, or interact with, anything in a different room.
Rooms are arranged in a map."

A room can be privately-named or publically-named. A room is usually publically-named.
A room can be lighted or dark. A room is usually lighted.
A room can be visited or unvisited. A room is usually unvisited.

A room has a text called description.

A room has an object called map region. The map region of a room is usually nothing.

The verb to be adjacent to implies the reversed adjacency relation.
Definition: A room is adjacent if it is adjacent to the location.

The verb to be regionally in implies the reversed regional-containment relation.

The specification of region is "Represents a broader area than a single
room, and allows rules to apply to a whole geographical territory. Each
region can contain many rooms, and regions can even be inside each other,
though they cannot otherwise overlap. For instance, the room Place d'Italie
might be inside the region 13th Arrondissement, which in turn is inside
the region Paris. Regions are useful mainly when the world is a large one,
and are optional."

A region can be privately-named or publically-named. A region is usually publically-named.

Section SR1/3 - Things

The specification of thing is "Represents anything interactive in the model
world that is not a room. People, pieces of scenery, furniture, doors and
mislaid umbrellas might all be examples, and so might more surprising things
like the sound of birdsong or a shaft of sunlight."

A thing can be lit or unlit. A thing is usually unlit.
A thing can be edible or inedible. A thing is usually inedible.
A thing can be fixed in place or portable. A thing is usually portable.
A thing can be scenery.
A thing can be wearable.
A thing can be pushable between rooms.

A thing can be handled.

A thing can be privately-named or publically-named. A thing is usually publically-named.
A thing can be described or undescribed. A thing is usually described.
A thing can be marked for listing or unmarked for listing. A thing is usually
unmarked for listing.
A thing can be mentioned or unmentioned. A thing is usually mentioned.

A thing has a text called a description.
A thing has a text called an initial appearance.

Scenery is usually fixed in place. [An implication.]

Section SR1/4 - Directions

The specification of direction is "Represents a direction of movement, such
as northeast or down. They always occur in opposite, matched pairs: northeast
and southwest, for instance; down and up."

A direction can be privately-named or publically-named. A direction is usually
publically-named.
A direction can be marked for listing or unmarked for listing. A direction is
usually unmarked for listing.

A direction has a direction called an opposite.

Include (-
	has scenery, ! class CompassDirection,
-) when defining a direction.

The north is a direction.
The northeast is a direction.
The northwest is a direction.
The south is a direction.
The southeast is a direction.
The southwest is a direction.
The east is a direction.
The west is a direction.
The up is a direction.
The down is a direction.
The inside is a direction.
The outside is a direction.

The north has opposite south. Understand "n" as north.
The northeast has opposite southwest. Understand "ne" as northeast.
The northwest has opposite southeast. Understand "nw" as northwest.
The south has opposite north. Understand "s" as south.
The southeast has opposite northwest. Understand "se" as southeast.
The southwest has opposite northeast. Understand "sw" as southwest.
The east has opposite west. Understand "e" as east.
The west has opposite east. Understand "w" as west.
Up has opposite down. Understand "u" as up.
Down has opposite up. Understand "d" as down.
Inside has opposite outside. Understand "in" as inside.
Outside has opposite inside. Understand "out" as outside.

The inside object translates into I6 as "in_obj".
The outside object translates into I6 as "out_obj".

The verb to be above implies the mapping up relation.
The verb to be mapped above implies the mapping up relation.
The verb to be below implies the mapping down relation.
The verb to be mapped below implies the mapping down relation.

Section SR1/5 - Doors

The specification of door is "Represents a conduit joining two rooms, most
often a door or gate but sometimes a plank bridge, a slide or a hatchway.
Usually visible and operable from both sides (for instance if you write
'The blue door is east of the Ballroom and west of the Garden.'), but
sometimes only one-way (for instance if you write 'East of the Ballroom is
the long slide. Through the long slide is the cellar.')."

A door is always fixed in place.
A door is never pushable between rooms.
Include (- has door, -) when defining a door.

A door has an object called other side.
The other side property translates into I6 as "door_to".
Leading-through relates one room (called the other side) to various doors.
The verb to be through implies the leading-through relation.

Section SR1/6 - Containers

The specification of container is "Represents something into which portable
things can be put, such as a teachest or a handbag. Something with a really
large immobile interior, such as the Albert Hall, had better be a room
instead."

A container can be enterable.
A container can be opaque or transparent. A container is usually opaque.
A container has a number called carrying capacity.
The carrying capacity of a container is usually 100.

Include (- has container, -) when defining a container.

Section SR1/7 - Supporters

The specification of supporter is "Represents a surface on which things can be
placed, such as a table."

A supporter can be enterable.
A supporter has a number called carrying capacity.
The carrying capacity of a supporter is usually 100.

A supporter is usually fixed in place.

Include (-
	has transparent supporter
-) when defining a supporter.

Section SR1/8 - Openability

A door can be open or closed. A door is usually closed.
A door can be openable or unopenable. A door is usually openable.

A container can be open or closed. A container is usually open.
A container can be openable or unopenable. A container is usually unopenable.

Section SR1/9 - Lockability

A door can be lockable. A door is usually not lockable.
A door can be locked or unlocked. A door is usually unlocked.
A door has an object called a matching key.
A locked door is usually lockable. [An implication.]
A locked door is usually closed. [An implication.]
A lockable door is usually openable. [An implication.]

A container can be lockable. A container is usually not lockable.
A container can be locked or unlocked. A container is usually unlocked.
A container has an object called a matching key.
A locked container is usually lockable. [An implication.]
A locked container is usually closed. [An implication.]
A lockable container is usually openable. [An implication.]

Lock-fitting relates one thing (called the matching key) to various things.
The verb to unlock (it unlocks, they unlock, it unlocked, it is unlocked)
implies the lock-fitting relation.

Section SR1/10 - Backdrops

The specification of backdrop is "Represents an aspect of the landscape
or architecture which extends across more than one room: for instance,
a stream, the sky or a long carpet."

A backdrop is usually scenery.
A backdrop is always fixed in place.
A backdrop is never pushable between rooms.

Section SR1/11 - People

The specification of person is "Despite the name, not necessarily
a human being, but anything animate enough to envisage having a
conversation with, or bartering with."

A person can be female or male. A person is usually male.
A person can be neuter. A person is usually not neuter.

A person has a number called carrying capacity.
The carrying capacity of a person is usually 100.

Include (-
	has transparent animate
	with before NULL,
-) when defining a person.

The yourself is an undescribed person. The yourself is proper-named.

The description of yourself is usually "As good-looking as ever."

The yourself object translates into I6 as "selfobj".
Include (-
	with saved_short_name "yourself",
 -) when defining yourself.

Section SR1/12 - Animals, men and women

The plural of man is men. The plural of woman is women.

A man is a kind of person.
The specification of man is "Represents a man or boy."
A man is always male. A man is never neuter.

A woman is a kind of person.
The specification of woman is "Represents a woman or girl."
A woman is always female. A woman is never neuter.

An animal is a kind of person.

The specification of animal is "Represents an animal, or at any rate a
non-human living creature reasonably large and possible to interact with: a
giant Venus fly-trap might qualify, but not a patch of lichen."

Section SR1/13 - Devices

A device is a kind of thing.

A device can be switched on or switched off. A device is usually switched off.
Include (- has switchable, -) when defining a device.

The specification of device is "Represents a machine or contrivance of some
kind which can be switched on or off."

Section SR1/14 - Vehicles

A vehicle is a kind of container.

The specification of vehicle is "Represents a container large enough for
a person to enter, and which can then move between rooms at the driver's
instruction. (If a supporter is needed instead, try the extension
Rideable Vehicles by Graham Nelson.)"

A vehicle is always enterable.

A vehicle is usually not portable.

Section SR1/15 - Player's holdall

A player's holdall is a kind of container.

The specification of player's holdall is "Represents a container which the
player can carry around as a sort of rucksack, into which spare items are
automatically stowed away."

A player's holdall is always portable.
A player's holdall is usually openable.

Include (-
	Constant RUCKSACK_CLASS = (+ player's holdall +);
-) after "Definitions.i6t".

Section SR1/16 - Inform 6 equivalents

The wearable property translates into I6 as "clothing".
The undescribed property translates into I6 as "concealed".
The edible property translates into I6 as "edible".
The enterable property translates into I6 as "enterable".
The female property translates into I6 as "female".
The mentioned property translates into I6 as "mentioned".
The lit property translates into I6 as "light".
The lighted property translates into I6 as "light".
The lockable property translates into I6 as "lockable".
The locked property translates into I6 as "locked".
The handled property translates into I6 as "moved".
The neuter property translates into I6 as "neuter".
The switched on property translates into I6 as "on".
The open property translates into I6 as "open".
The openable property translates into I6 as "openable".
The privately-named property translates into I6 as "privately_named".
The plural-named property translates into I6 as "pluralname".
The proper-named property translates into I6 as "proper".
The pushable between rooms property translates into I6 as "pushable".
The scenery property translates into I6 as "scenery".
The fixed in place property translates into I6 as "static".
The transparent property translates into I6 as "transparent".
The visited property translates into I6 as "visited".
The marked for listing property translates into I6 as "workflag".

The indefinite article property translates into I6 as "article".
The carrying capacity property translates into I6 as "capacity".
The description property translates into I6 as "description".
The initial appearance property translates into I6 as "initial".
The map region property translates into I6 as "map_region".
The printed plural name property translates into I6 as "plural".
The printed name property translates into I6 as "short_name".
The matching key property translates into I6 as "with_key".

Part SR2 - Variables and Rulebooks

Section SR2/1 - Situation

The player is a person that varies. [*]
The player variable translates into I6 as "player".

The location -- documented at var_location -- is an object that varies. [*]
The score -- documented at var_score -- is a number that varies.
The last notified score is a number that varies.
The maximum score is a number that varies. [*]
The turn count is a number that varies.
The time of day -- documented at var_time -- is a time that varies. [*]
The darkness witnessed is a truth state that varies.

The location variable translates into I6 as "real_location".
The score variable translates into I6 as "score".
The last notified score variable translates into I6 as "last_score".
The maximum score variable translates into I6 as "MAX_SCORE".
The turn count variable translates into I6 as "turns".
The time of day variable translates into I6 as "the_time".

Section SR2/2 - Current action

The noun -- documented at var_noun -- is an object that varies. [*]
The second noun is an object that varies. [*]
The person asked -- documented at var_person_asked -- is an object that varies. [*]
The reason the action failed -- documented at var_reason -- is an action name
based rule producing nothing that varies.
The item described is an object that varies.

The noun variable translates into I6 as "noun".
The second noun variable translates into I6 as "second".
The person asked variable translates into I6 as "actor".
The reason the action failed variable translates into I6 as "reason_the_action_failed".
The item described variable translates into I6 as "self".

Section SR2/3 - Used when ruling on accessibility

The person reaching -- documented at var_person_reaching -- is an object that varies.
The container in question is an object that varies.
The supporter in question is an object that varies.
The particular possession -- documented at var_particular -- is a thing that varies.

The person reaching variable translates into I6 as "actor".
The container in question variable translates into I6 as "parameter_object".
The supporter in question variable translates into I6 as "parameter_object".
The particular possession variable translates into I6 as "particular_possession".

Section SR2/4 - Used when understanding typed commands

The player's command -- documented at var_command -- is a snippet that varies.
The matched text is a snippet that varies.
The number understood -- documented at var_understood -- is a number that varies. [*]
The time understood is a time that varies. [*]
The topic understood is a snippet that varies. [*]
The truth state understood is a truth state that varies. [*]
The current item from the multiple object list is an object that varies.

The player's command variable translates into I6 as "players_command".
The matched text variable translates into I6 as "matched_text".
The topic understood variable translates into I6 as "parsed_number".
The current item from the multiple object list variable translates into I6 as
	"multiple_object_item".

Section SR2/5 - Presentation on screen

The command prompt -- documented at var_prompt -- is a text that varies. [**]
The command prompt is ">".

The left hand status line -- documented at var_sl -- is a text that varies.
The right hand status line is a text that varies.

The left hand status line variable translates into I6 as "left_hand_status_line".
The right hand status line variable translates into I6 as "right_hand_status_line".

The listing group size is a number that varies.
The listing group size variable translates into I6 as "listing_size".

Section SR2/6a - Unindexed Standard Rules variables - Unindexed

The story title, the story author, the story headline, the story genre
and the story description are text variables. [*****]
The release number and the story creation year are number variables. [**]

The story title variable translates into I6 as "Story".

Section SR2/6b - Unindexed Standard Rules variables - Unindexed (for figures language element only)

Figure of cover is the file of cover art.

Section SR2/6c - Unindexed Standard Rules variables - Unindexed

The substitution-variable is an object that varies. [*]
The substitution-variable variable translates into I6 as "subst__v".

The I6-nothing-constant is an object that varies. [*]
The I6-nothing-constant variable translates into I6 as "nothing".

The I6-varying-global is an object that varies. [*]
The I6-varying-global variable translates into I6 as "nothing".

The item-pushed-between-rooms is an object that varies.
The item-pushed-between-rooms variable translates into I6 as "move_pushing".

The actor-location is an object that varies. [*]
The actor-location variable translates into I6 as "actor_location".

The parameter-object is an object that varies. [*]
The parameter-object variable translates into I6 as "parameter_object".

The scene being changed is a scene that varies. [*]
The scene being changed variable translates into I6 as "parameter_object".

Section SR2/7 - The Standard Rulebooks

Procedural rules is a rulebook. [0]

Startup rules is a rulebook. [1]
Turn sequence rules is a rulebook. [2]
Shutdown rules is a rulebook. [3]

Scene changing rules is a rulebook. [4]
When play begins is a rulebook. [5]
When play ends is a rulebook. [6]
When scene begins is a scene based rulebook. [7]
When scene ends is a scene based rulebook. [8]
Every turn rules is a rulebook. [9]

Action-processing rules is a rulebook. [10]
The action-processing rulebook has a person called the actor.
Setting action variables is a rulebook. [11]
The specific action-processing rules is a rulebook. [12]
The specific action-processing rulebook has a truth state called action in world.
The specific action-processing rulebook has a truth state called action keeping silent.
The specific action-processing rulebook has a rulebook called specific check rulebook.
The specific action-processing rulebook has a rulebook called specific carry out rulebook.
The specific action-processing rulebook has a rulebook called specific report rulebook.
The specific action-processing rulebook has a truth state called within the player's sight.
The player's action awareness rules is a rulebook. [13]

Accessibility rules is a rulebook. [14]
Reaching inside rules is an object-based rulebook. [15]
Reaching inside rules have outcomes allow access (success) and deny access (failure).
Reaching outside rules is an object-based rulebook. [16]
Reaching outside rules have outcomes allow access (success) and deny access (failure).
Visibility rules is a rulebook. [17]
Visibility rules have outcomes there is sufficient light (failure) and there is
insufficient light (success).

Persuasion rules is a rulebook. [18]
Persuasion rules have outcomes persuasion succeeds (success) and persuasion fails (failure).
Unsuccessful attempt by is a rulebook. [19]

Before rules is a rulebook. [20]
Instead rules is a rulebook. [21]
Check rules is a rulebook. [22]
Carry out rules is a rulebook. [23]
After rules is a rulebook. [24]
Report rules is a rulebook. [25]

The does the player mean rules are a rulebook. [26]
The does the player mean rules have outcomes it is very likely, it is likely, it is possible,
it is unlikely and it is very unlikely.

Include (-
	[ CheckDPMR result sinp1 sinp2 rv;
		sinp1 = inp1; sinp2 = inp2; inp1 = noun; inp2 = second;
		rv = FollowRulebook( (+does the player mean rules+) );
		inp1 = sinp1; inp2 = sinp2;
		if ((rv) && RulebookSucceeded()) {
			result = ResultOfRule();
			if (result == (+ it is very likely outcome +) ) return 4;
			if (result == (+ it is likely outcome +) ) return 3;
			if (result == (+ it is possible outcome +) ) return 2;
			if (result == (+ it is unlikely outcome +) ) return 1;
			if (result == (+ it is very unlikely outcome +) ) return 0;
		}
		return 2;
	];
-);

Section SR2/8 - The Standard Rules

The little-used do nothing rule translates into I6 as "LITTLE_USED_DO_NOTHING_R".

Include (-
[ LITTLE_USED_DO_NOTHING_R; rfalse; ];
-);

The start in the correct scenes rule is listed first in the startup rulebook. [6th.]
The position player in model world rule is listed first in the startup rulebook. [5th.]
The update chronological records rule is listed first in the startup rulebook. [4th.]
The seed random number generator rule is listed first in the startup rulebook. [3rd.]
The virtual machine startup rule is listed first in the startup rulebook. [2nd.]
The initialise memory rule is listed first in the startup rulebook. [1st.]

The virtual machine startup rule translates into I6 as "VIRTUAL_MACHINE_STARTUP_R".
The initialise memory rule translates into I6 as "INITIALISE_MEMORY_R".
The seed random number generator rule translates into I6 as "SEED_RANDOM_NUMBER_GENERATOR_R".
The update chronological records rule translates into I6 as "UPDATE_CHRONOLOGICAL_RECORDS_R".
The position player in model world rule translates into I6 as "POSITION_PLAYER_IN_MODEL_R".

This is the start in the correct scenes rule: consider the scene changing rules.

The when play begins stage rule is listed in the startup rulebook.
The fix baseline scoring rule is listed in the startup rulebook.
The display banner rule is listed in the startup rulebook.
The initial room description rule is listed in the startup rulebook.

This is the when play begins stage rule: follow the when play begins rulebook.

This is the fix baseline scoring rule: now the last notified score is the score.

This is the display banner rule: say "[banner text]".

This is the initial room description rule: try looking.

A first turn sequence rule (this is the every turn stage rule): follow the every turn rules. [4th.]
A first turn sequence rule: consider the scene changing rules. [3rd.]
The generate action rule is listed first in the turn sequence rulebook. [2nd.]
The parse command rule is listed first in the turn sequence rulebook. [1st.]

The timed events rule is listed in the turn sequence rulebook.
The advance time rule is listed in the turn sequence rulebook.
The update chronological records rule is listed in the turn sequence rulebook.

A last turn sequence rule: consider the scene changing rules. [3rd from last.]
The adjust light rule is listed last in the turn sequence rulebook. [2nd from last.]
The note object acquisitions rule is listed last in the turn sequence rulebook. [Penultimate.]
The notify score changes rule is listed last in the turn sequence rulebook. [Last.]

This is the notify score changes rule:
	if the score is not the last notified score:
		issue score notification message;
		now the last notified score is the score;

The adjust light rule translates into I6 as "ADJUST_LIGHT_R".
The advance time rule translates into I6 as "ADVANCE_TIME_R".
The generate action rule translates into I6 as "GENERATE_ACTION_R".
The note object acquisitions rule translates into I6 as "NOTE_OBJECT_ACQUISITIONS_R".
The parse command rule translates into I6 as "PARSE_COMMAND_R".
The timed events rule translates into I6 as "TIMED_EVENTS_R".

The when play ends stage rule is listed first in the shutdown rulebook.
The resurrect player if asked rule is listed last in the shutdown rulebook.
The print player's obituary rule is listed last in the shutdown rulebook.
The ask the final question rule is listed last in the shutdown rulebook.

This is the when play ends stage rule: follow the when play ends rulebook.
This is the print player's obituary rule:
	carry out the printing the player's obituary activity.

The resurrect player if asked rule translates into I6 as "RESURRECT_PLAYER_IF_ASKED_R".
The ask the final question rule translates into I6 as "ASK_FINAL_QUESTION_R".

The scene change machinery rule is listed last in the scene changing rulebook.

The scene change machinery rule translates into I6 as "DetectSceneChange".

Section SR2/9 - The Entire Game scene

The Entire Game is a scene.
The Entire Game begins when the story has not ended.
The Entire Game ends when the story has ended.

Section SR2/10 - Action processing

The before stage rule is listed first in the action-processing rules. [3rd.]
The set pronouns from items from multiple object lists rule is listed first in the
	action-processing rules. [2nd.]
The announce items from multiple object lists rule is listed first in the
	action-processing rules. [1st.]
The basic visibility rule is listed in the action-processing rules.
The basic accessibility rule is listed in the action-processing rules.
The carrying requirements rule is listed in the action-processing rules.
The instead stage rule is listed last in the action-processing rules. [4th from last.]
The requested actions require persuasion rule is listed last in the action-processing rules.
The carry out requested actions rule is listed last in the action-processing rules.
The descend to specific action-processing rule is listed last in the action-processing rules.
The end action-processing in success rule is listed last in the action-processing rules. [Last.]

This is the set pronouns from items from multiple object lists rule:
	if the current item from the multiple object list is not nothing,
		set pronouns from the current item from the multiple object list.

This is the announce items from multiple object lists rule:
	if the current item from the multiple object list is not nothing,
		say "[current item from the multiple object list]: [run paragraph on]".

This is the before stage rule: abide by the before rules.
This is the instead stage rule: abide by the instead rules.

This is the end action-processing in success rule: rule succeeds.

The basic accessibility rule translates into I6 as "BASIC_ACCESSIBILITY_R".
The basic visibility rule translates into I6 as "BASIC_VISIBILITY_R".
The carrying requirements rule translates into I6 as "CARRYING_REQUIREMENTS_R".
The requested actions require persuasion rule translates into I6 as "REQUESTED_ACTIONS_REQUIRE_R".
The carry out requested actions rule translates into I6 as "CARRY_OUT_REQUESTED_ACTIONS_R".
The descend to specific action-processing rule translates into I6 as
"DESCEND_TO_SPECIFIC_ACTION_R".

The work out details of specific action rule is listed first in the specific
action-processing rules.

A specific action-processing rule
	(this is the investigate player's awareness before action rule):
	consider the player's action awareness rules;
	if rule succeeded, now within the player's sight is true;
	otherwise now within the player's sight is false.

A specific action-processing rule (this is the check stage rule):
	anonymously abide by the specific check rulebook.

A specific action-processing rule (this is the carry out stage rule):
	consider the specific carry out rulebook.

A specific action-processing rule (this is the after stage rule):
	if action in world is true, abide by the after rules.

A specific action-processing rule
	(this is the investigate player's awareness after action rule):
	if within the player's sight is false:
		consider the player's action awareness rules;
		if rule succeeded, now within the player's sight is true;

A specific action-processing rule (this is the report stage rule):
	if within the player's sight is true and action keeping silent is false,
		consider the specific report rulebook;

The last specific action-processing rule: rule succeeds.

The work out details of specific action rule translates into I6 as
"WORK_OUT_DETAILS_OF_SPECIFIC_R".

A player's action awareness rule
	(this is the player aware of his own actions rule):
	if the player is the actor, rule succeeds.
A player's action awareness rule
	(this is the player aware of actions by visible actors rule):
	if the player is not the actor and the player can see the actor, rule succeeds.
A player's action awareness rule
	(this is the player aware of actions on visible nouns rule):
	if the noun is a thing and the player can see the noun, rule succeeds.
A player's action awareness rule
	(this is the player aware of actions on visible second nouns rule):
	if the second noun is a thing and the player can see the second noun, rule succeeds.

Section SR2/11 - Accessibility

The access through barriers rule is listed last in the accessibility rules.

The access through barriers rule translates into I6 as "ACCESS_THROUGH_BARRIERS_R".

The can't reach inside rooms rule is listed last in the reaching inside rules. [Penultimate.]
The can't reach inside closed containers rule is listed last in the reaching
inside rules. [Last.]

The can't reach inside closed containers rule translates into I6 as "CANT_REACH_INSIDE_CLOSED_R".
The can't reach inside rooms rule translates into I6 as "CANT_REACH_INSIDE_ROOMS_R".

The can't reach outside closed containers rule is listed last in the reaching outside rules.

The can't reach outside closed containers rule translates into I6 as "CANT_REACH_OUTSIDE_CLOSED_R".

The can't act in the dark rule is listed last in the visibility rules.

The last visibility rule (this is the can't act in the dark rule): if in darkness, rule succeeds.

Does the player mean taking something which is carried by the player
	(this is the very unlikely to mean taking what's already carried rule):
	it is very unlikely.

Section SR2/12 - Adjectival definitions

Definition: a number is even rather than odd if the remainder after dividing it by 2 is 0.
Definition: a number is positive if it is greater than zero.
Definition: a number is negative if it is less than zero.

Definition: a text is empty rather than non-empty if it is "".

Definition: an indexed text is empty rather than non-empty if I6 routine
	"INDEXED_TEXT_TY_Empty" says so (it contains no characters).

A scene can be recurring or non-recurring. A scene is usually non-recurring.
The Entire Game is recurring.

Definition: a scene is happening if I6 condition "scene_status-->(*1-1)==1"
	says so (it is currently taking place).

Definition: a table name is empty rather than non-empty if the number of filled rows in it is 0.
Definition: a table name is full rather than non-full if the number of blank rows in it is 0.

Definition: a rulebook is empty rather than non-empty if I6 routine "RulebookEmpty" says so (it
	contains no rules, so that following it does nothing and makes no decision).

Definition: an activity is empty rather than non-empty if I6 routine "ActivityEmpty" says so (its
	before, for and after rulebooks are all empty).
Definition: an activity is going on if I6 routine "TestActivity" says so (one
	of its three rulebooks is currently being run).

Definition: a list of values is empty rather than non-empty if I6 routine
	"LIST_OF_TY_Empty" says so (it contains no entries).

Definition: a use option is active rather than inactive if I6 routine
	"TestUseOption" says so (it has been requested in the source text).

Definition: a relation is equivalence if I6 routine
	"RELATION_TY_EquivalenceAdjective" makes it so (it is an equivalence
	relation, that is, it relates in groups).

Definition: a relation is symmetric if I6 routine
	"RELATION_TY_SymmetricAdjective" makes it so (it is a symmetric relation,
	that is, it's always true that X is related to Y if and only if Y is
	related to X).

Definition: a relation is one-to-one if I6 routine
	"RELATION_TY_OToOAdjective" makes it so (it is a one-to-one relation,
	that is, any given X can relate to only one Y, and vice versa).

Definition: a relation is one-to-various if I6 routine
	"RELATION_TY_OToVAdjective" makes it so (it is a one-to-various
	relation, that is, any given Y has only one X such that X relates to Y).

Definition: a relation is various-to-one if I6 routine
	"RELATION_TY_VToOAdjective" makes it so (it is a various-to-one
	relation, that is, any given X relates to only one Y).

Definition: a relation is various-to-various if I6 routine
	"RELATION_TY_VToVAdjective" makes it so (it is a
	various-to-various relation, that is, there are no limitations on how many
	X can relate to a given Y, or vice versa).

Definition: a relation is empty rather than non-empty if I6 routine
	"RELATION_TY_Empty" makes it so (it does not relate any values, that is,
	R(x,y) is false for all x and y).

Section SR2/13 - Scene descriptions

A scene has a text called description.
When a scene (called the event) begins (this is the scene description text rule):
	if the description of the event is not "",
		say "[the description of the event][paragraph break]".

Section SR2/14 - Command parser errors

A command parser error is a kind of value. The command parser errors are
didn't understand error,
only understood as far as error,
didn't understand that number error,
can only do that to something animate error,
can't see any such thing error,
said too little error,
aren't holding that error,
can't use multiple objects error,
can only use multiple objects error,
not sure what it refers to error,
excepted something not included error,
not a verb I recognise error,
not something you need to refer to error,
can't see it at the moment error,
didn't understand the way that finished error,
not enough of those available error,
nothing to do error,
noun did not make sense in that context error,
referred to a determination of scope error, and
I beg your pardon error.

The latest parser error is a command parser error that varies.
The latest parser error variable translates into I6 as "etype".

Part SR3 - Activities

Section SR3/1 - Definitions

Printing the name of something (documented at act_pn) is an activity. [0]

Before printing the name of a thing (called the item being printed)
	(this is the make named things mentioned rule):
	now the item being printed is mentioned.

The standard name printing rule is listed last in the for printing the name rulebook.
The standard name printing rule translates into I6 as "STANDARD_NAME_PRINTING_R".

Printing the plural name of something (documented at act_ppn) is an activity. [1]

Rule for printing the plural name of something (called the item) (this is the standard
	printing the plural name rule):
	say the printed plural name of the item.
The standard printing the plural name rule is listed last in the for printing
the plural name rulebook.

Printing a number of something (documented at act_pan) is an activity. [2]

Rule for printing a number of something (called the item) (this is the standard
	printing a number of something rule):
	say "[listing group size in words] ";
	carry out the printing the plural name activity with the item.
The standard printing a number of something rule is listed last in the for printing
a number rulebook.

Printing room description details of something (documented at act_details) is an activity. [3]

Listing contents of something (documented at act_lc) is an activity. [4]
The standard contents listing rule is listed last in the for listing contents rulebook.
The standard contents listing rule translates into I6 as "STANDARD_CONTENTS_LISTING_R".
Grouping together something (documented at act_gt) is an activity. [5]

Writing a paragraph about something (documented at act_wpa) is an activity. [6]

Listing nondescript items of something (documented at act_lni) is an activity. [7]

Printing the name of a dark room (documented at act_darkname) is an activity. [8]
Printing the description of a dark room (documented at act_darkdesc) is an activity. [9]
Printing the announcement of darkness (documented at act_nowdark) is an activity. [10]
Printing the announcement of light (documented at act_nowlight) is an activity. [11]
Printing a refusal to act in the dark (documented at act_toodark) is an activity. [12]

The look around once light available rule is listed last in for printing the
announcement of light.

This is the look around once light available rule:
	try looking.

Constructing the status line (documented at act_csl) is an activity. [13]
Printing the banner text (documented at act_banner) is an activity. [14]

Reading a command (documented at act_reading) is an activity. [15]
Deciding the scope of something (future action) (documented at act_ds) is an activity. [16]
Deciding the concealed possessions of something (documented at act_con) is an activity. [17]
Deciding whether all includes something (future action) (documented at act_all)
	is an activity. [18]
The for deciding whether all includes rules have outcomes it does not (failure) and
	it does (success).
Clarifying the parser's choice of something (future action) (documented at act_clarify)
	is an activity. [19]
Asking which do you mean (future action) (documented at act_which) is an activity. [20]
Printing a parser error (documented at act_parsererror) is an activity. [21]
Supplying a missing noun (documented at act_smn) is an activity. [22]
Supplying a missing second noun (documented at act_smn) is an activity. [23]
Implicitly taking something (documented at act_implicitly) is an activity. [24]

Rule for deciding whether all includes scenery while taking (this is the
	exclude scenery from take all rule): rule fails.
Rule for deciding whether all includes people while taking (this is the
	exclude people from take all rule): rule fails.
Rule for deciding whether all includes fixed in place things while taking (this
	is the exclude fixed in place things from take all rule): rule fails.

Rule for supplying a missing noun while an actor smelling (this is the ambient odour rule):
	now the noun is the location.

Rule for supplying a missing noun while an actor listening (this is the ambient sound rule):
	now the noun is the location.

Rule for supplying a missing noun while an actor going (this is the block vaguely going rule):
	issue library message going action number 7.

Starting the virtual machine (documented at act_startvm) is an activity. [25]

The enable Glulx acceleration rule is listed first in for starting the virtual machine.

The enable Glulx acceleration rule translates into I6 as "ENABLE_GLULX_ACCEL_R".

Amusing a victorious player (documented at act_amuse) is an activity. [26]

Printing the player's obituary (documented at act_obit) is an activity. [27]
The print obituary headline rule is listed last in for printing the player's obituary.
The print final score rule is listed last in for printing the player's obituary.
The display final status line rule is listed last in for printing the player's obituary.

The print obituary headline rule translates into I6 as "PRINT_OBITUARY_HEADLINE_R".
The print final score rule translates into I6 as "PRINT_FINAL_SCORE_R".
The display final status line rule translates into I6 as "DISPLAY_FINAL_STATUS_LINE_R".

Handling the final question is an activity. [28]

The immediately restart the VM rule translates into I6 as "IMMEDIATELY_RESTART_VM_R".
The immediately restore saved game rule translates into I6 as "IMMEDIATELY_RESTORE_SAVED_R".
The immediately quit rule translates into I6 as "IMMEDIATELY_QUIT_R".
The immediately undo rule translates into I6 as "IMMEDIATELY_UNDO_R".

The print the final question rule is listed in before handling the final question.
The print the final prompt rule is listed in before handling the final question.
The read the final answer rule is listed last in before handling the final question.
The standard respond to final question rule is listed last in for handling the final question.

This is the print the final prompt rule: say "> [run paragraph on]".

The read the final answer rule translates into I6 as "READ_FINAL_ANSWER_R".

Section SR3/2 - Final Question

This is the print the final question rule:
	let named options count be 0;
	repeat through the Table of Final Question Options:
		if the only if victorious entry is false or the story has ended finally:
			if there is a final response rule entry
				or the final response activity entry [activity] is not empty:
				if there is a final question wording entry, increase named options count by 1;
	if the named options count is less than 1, abide by the immediately quit rule;
	say "Would you like to ";
	repeat through the Table of Final Question Options:
		if the only if victorious entry is false or the story has ended finally:
			if there is a final response rule entry
				or the final response activity entry [activity] is not empty:
				if there is a final question wording entry:
					say final question wording entry;
					decrease named options count by 1;
					if the named options count is 0:
						say "?[line break]";
					otherwise if the named options count is 1:
						if the serial comma option is active, say ",";
						say " or ";
					otherwise:
						say ", ";

This is the standard respond to final question rule:
	repeat through the Table of Final Question Options:
		if the only if victorious entry is false or the story has ended finally:
			if there is a final response rule entry
				or the final response activity entry [activity] is not empty:
				if the player's command matches the topic entry:
					if there is a final response rule entry, abide by final response rule entry;
					otherwise carry out the final response activity entry activity;
					rule succeeds;
	issue miscellaneous library message number 8.

Section SR3/3 - Final question options

Table of Final Question Options
final question wording	only if victorious	topic		final response rule		final response activity
"RESTART"				false				"restart"	immediately restart the VM rule	--
"RESTORE a saved game"	false				"restore"	immediately restore saved game rule	--
"see some suggestions for AMUSING things to do"	true	"amusing"	--	amusing a victorious player
"QUIT"					false				"quit"		immediately quit rule	--
"UNDO the last command"	false				"undo"		immediately undo rule	--

Section SR3/4 - Locale descriptions - Unindexed

Table of Locale Priorities
notable-object (an object)	locale description priority (a number)
--							--
with blank rows for each thing.

To describe locale for (O - object):
	carry out the printing the locale description activity with O.

To set the/-- locale priority of (O - an object) to (N - a number):
	if O is a thing:
		if N <= 0, now O is mentioned;
		if there is a notable-object of O in the Table of Locale Priorities:
			choose row with a notable-object of O in the Table of Locale Priorities;
			if N <= 0, blank out the whole row;
			otherwise now the locale description priority entry is N;
		otherwise:
			if N is greater than 0:
				choose a blank row in the Table of Locale Priorities;
				now the notable-object entry is O;
				now the locale description priority entry is N;

Printing the locale description of something (documented at act_pld) is an activity.

The locale paragraph count is a number that varies.

Before printing the locale description (this is the initialise locale description rule):
	now the locale paragraph count is 0;
	repeat with item running through things:
		now the item is not mentioned;
	repeat through the Table of Locale Priorities:
		blank out the whole row.

Before printing the locale description (this is the find notable locale objects rule):
	let the domain be the parameter-object;
	carry out the choosing notable locale objects activity with the domain;
	continue the activity.

For printing the locale description (this is the interesting locale paragraphs rule):
	let the domain be the parameter-object;
	sort the Table of Locale Priorities in locale description priority order;
	repeat through the Table of Locale Priorities:
		[say "[notable-object entry]...";]
		carry out the printing a locale paragraph about activity with the notable-object entry;
	continue the activity.

For printing the locale description (this is the you-can-also-see rule):
	let the domain be the parameter-object;
	let the mentionable count be 0;
	repeat with item running through things:
		now the item is not marked for listing;
	repeat through the Table of Locale Priorities:
		[say "[notable-object entry] - [locale description priority entry].";]
		if the locale description priority entry is greater than 0,
			now the notable-object entry is marked for listing;
		increase the mentionable count by 1;
	if the mentionable count is greater than 0:
		repeat with item running through things:
			if the item is mentioned:
				now the item is not marked for listing;
		begin the listing nondescript items activity with the domain;
		if the number of marked for listing things is 0:
			abandon the listing nondescript items activity with the domain;
		otherwise:
			if handling the listing nondescript items activity:
				if the domain is a room:
					if the domain is the location, say "You ";
					otherwise say "In [the domain] you ";
				otherwise if the domain is a supporter:
					say "On [the domain] you ";
				otherwise if the domain is an animal:
					say "On [the domain] you ";
				otherwise:
					say "In [the domain] you ";
				say "can [if the locale paragraph count is greater than 0]also [end if]see ";
				let the common holder be nothing;
				let contents form of list be true;
				repeat with list item running through marked for listing things:
					if the holder of the list item is not the common holder:
						if the common holder is nothing,
							now the common holder is the holder of the list item;
						otherwise now contents form of list is false;
					if the list item is mentioned, now the list item is not marked for listing;
				filter list recursion to unmentioned things;
				if contents form of list is true and the common holder is not nothing,
					list the contents of the common holder, as a sentence, including contents,
						giving brief inventory information, tersely, not listing
						concealed items, listing marked items only;
				otherwise say "[a list of marked for listing things including contents]";
				if the domain is the location, say " here";
				say ".[paragraph break]";
				unfilter list recursion;
			end the listing nondescript items activity with the domain;
	continue the activity.

Choosing notable locale objects of something (documented at act_cnlo) is an activity.

For choosing notable locale objects (this is the standard notable locale objects rule):
	let the domain be the parameter-object;
	let the held item be the first thing held by the domain;
	while the held item is a thing:
		set the locale priority of the held item to 5;
		now the held item is the next thing held after the held item;
	continue the activity.

Printing a locale paragraph about something (documented at act_plp) is an activity.

For printing a locale paragraph about a thing (called the item)
	(this is the don't mention player's supporter in room descriptions rule):
	if the item encloses the player, set the locale priority of the item to 0;
	continue the activity.

For printing a locale paragraph about a thing (called the item)
	(this is the don't mention scenery in room descriptions rule):
	if the item is scenery, set the locale priority of the item to 0;
	continue the activity.

For printing a locale paragraph about a thing (called the item)
	(this is the don't mention undescribed items in room descriptions rule):
	if the item is undescribed:
		set the locale priority of the item to 0;
	continue the activity.

For printing a locale paragraph about a thing (called the item)
	(this is the set pronouns from items in room descriptions rule):
	if the item is not mentioned, set pronouns from the item;
	continue the activity.

For printing a locale paragraph about a thing (called the item)
	(this is the offer items to writing a paragraph about rule):
	if the item is not mentioned:
		if a paragraph break is pending, say "[conditional paragraph break]";
		carry out the writing a paragraph about activity with the item;
		if a paragraph break is pending:
			increase the locale paragraph count by 1;
			now the item is mentioned;
			say "[command clarification break]";
	continue the activity.

For printing a locale paragraph about a thing (called the item)
	(this is the use initial appearance in room descriptions rule):
	if the item is not mentioned:
		if the item provides the property initial appearance and the
			item is not handled and the initial appearance of the item is
			not "":
			increase the locale paragraph count by 1;
			say "[initial appearance of the item]";
			say "[paragraph break]";
			if a locale-supportable thing is on the item:
				repeat with possibility running through things on the item:
					now the possibility is marked for listing;
					if the possibility is mentioned:
						now the possibility is not marked for listing;
				say "On [the item] ";
				list the contents of the item, as a sentence, including contents,
					giving brief inventory information, tersely, not listing
					concealed items, prefacing with is/are, listing marked items only;
				say ".[paragraph break]";
			now the item is mentioned;
	continue the activity.

Definition: a thing (called the item) is locale-supportable if the item is not
scenery and the item is not mentioned and the item is not undescribed.

For printing a locale paragraph about a thing (called the item)
	(this is the describe what's on scenery supporters in room descriptions rule):
	if the item is [not undescribed and the item is] scenery and
		the item does not enclose the player:
		if a locale-supportable thing is on the item:
			set pronouns from the item;
			repeat with possibility running through things on the item:
				now the possibility is marked for listing;
				if the possibility is mentioned:
					now the possibility is not marked for listing;
			increase the locale paragraph count by 1;
			say "On [the item] ";
			list the contents of the item, as a sentence, including contents,
				giving brief inventory information, tersely, not listing
				concealed items, prefacing with is/are, listing marked items only;
			say ".[paragraph break]";
	continue the activity.

Part SR4 - Actions

Section SR4/1 - Generic action patterns

Section SR4/2 - Standard actions concerning the actor's possessions

Taking inventory is an action applying to nothing.
The taking inventory action translates into I6 as "Inv".

The specification of the taking inventory action is "Taking an inventory of
one's immediate possessions: the things being carried, either directly or in
any containers being carried. When the player performs this action, either
the inventory listing, or else a special message if nothing is being carried
or worn, is printed during the carry out rules: nothing happens at the report
stage. The opposite happens for other people performing the action: nothing
happens during carry out, but a report such as 'Mr X looks through his
possessions.' is produced (provided Mr X is visible)."

Carry out taking inventory (this is the print empty inventory rule):
	if the first thing held by the player is nothing, stop the action with
		library message taking inventory action number 1.

Carry out taking inventory (this is the print standard inventory rule):
	issue library message taking inventory action number 2;
	say ":[line break]";
	list the contents of the player, with newlines, indented, including contents,
		giving inventory information, with extra indentation.

Report an actor taking inventory (this is the report other people taking
	inventory rule):
	if the actor is not the player,
		issue actor-based library message taking inventory action number 5 for the actor.

Taking is an action applying to one thing.
The taking action translates into I6 as "Take".

The specification of the taking action is "The taking action is the only way
an action in the Standard Rules can cause something to be carried by an actor.
It is very simple in operation (the entire carry out stage consists only of
'now the actor carries the noun') but many checks must be performed before it
can be allowed to happen."

Check an actor taking (this is the can't take yourself rule):
	if the actor is the noun, stop the action with library message taking
		action number 2 for the noun.

Check an actor taking (this is the can't take other people rule):
	if the noun is a person, stop the action with library message taking
		action number 3 for the noun.

Check an actor taking (this is the can't take component parts rule):
	if the noun is part of something (called the whole), stop the action
		with library message taking action number 7 for the whole.

Check an actor taking (this is the can't take people's possessions rule):
	let the local ceiling be the common ancestor of the actor with the noun;
	let H be the not-counting-parts holder of the noun;
	while H is not nothing and H is not the local ceiling:
		if H is a person, stop the action with library message taking action
			number 6 for H;
		let H be the not-counting-parts holder of H;

Check an actor taking (this is the can't take items out of play rule):
	let H be the noun;
	while H is not nothing and H is not a room:
		let H be the not-counting-parts holder of H;
	if H is nothing, stop the action with library message taking action
		number 8 for the noun.

Check an actor taking (this is the can't take what you're inside rule):
	let the local ceiling be the common ancestor of the actor with the noun;
	if the local ceiling is the noun, stop the action with library message
		taking action number 4 for the noun.

Check an actor taking (this is the can't take what's already taken rule):
	if the actor is carrying the noun, stop the action with library message
		taking action number 5 for the noun;
	if the actor is wearing the noun, stop the action with library message
		taking action number 5 for the noun.

Check an actor taking (this is the can't take scenery rule):
	if the noun is scenery, stop the action with library message taking
		action number 10 for the noun.

Check an actor taking (this is the can only take things rule):
	if the noun is not a thing, stop the action with library message taking
		action number 15 for the noun.

Check an actor taking (this is the can't take what's fixed in place rule):
	if the noun is fixed in place, stop the action with library message taking
		action number 11 for the noun.

Check an actor taking (this is the use player's holdall to avoid exceeding
	carrying capacity rule):
	if the number of things carried by the actor is at least the
		carrying capacity of the actor:
		if the actor is holding a player's holdall (called the current working sack):
			let the transferred item be nothing;
			repeat with the possible item running through things carried by
				the actor:
				if the possible item is not lit and the possible item is not
					the current working sack, let the transferred item be the possible item;
			if the transferred item is not nothing:
				issue library message taking action number 13 for the
					transferred item and the current working sack;
				silently try the actor trying inserting the transferred item
					into the current working sack;
				if the transferred item is not in the current working sack, stop the action;

Check an actor taking (this is the can't exceed carrying capacity rule):
	if the number of things carried by the actor is at least the
		carrying capacity of the actor, stop the action with library
		message taking action number 12 for the actor.

Carry out an actor taking (this is the standard taking rule):
	now the actor carries the noun.

Report an actor taking (this is the standard report taking rule):
	if the actor is the player, issue library message taking action number 1
		for the noun;
	otherwise issue actor-based library message taking action number 16 for the noun.

Removing it from is an action applying to two things.
The removing it from action translates into I6 as "Remove".

The specification of the removing it from action is "Removing is not really
an action in its own right. Whereas there are many ways to put something down
(on the floor, on top of something, inside something else, giving it to
somebody else, and so on), Inform has only one way to take something: the
taking action. Removing exists only to provide some nicely worded replies
to impossible requests, and in all sensible cases is converted into taking.
Because of this, it's usually a bad idea to write rules about removing:
if you write a rule such as 'Instead of removing the key, ...' then it
won't apply if the player simply types TAKE KEY instead. The safe way to
do this is to write a rule about taking, which covers all possibilities."

Check an actor removing something from (this is the can't remove what's not inside rule):
	if the holder of the noun is not the second noun, stop the action with
		library message removing it from action number 2 for the noun.

Check an actor removing something from (this is the can't remove from people rule):
	let the owner be the holder of the noun;
	if the owner is a person:
		if the owner is the actor, convert to the taking off action on the noun;
		stop the action with library message taking action number 6 for the owner.

Check an actor removing something from (this is the convert remove to take rule):
	convert to the taking action on the noun.

The can't take component parts rule is listed before the can't remove what's not
inside rule in the check removing it from rules.

Dropping is an action applying to one thing.
The dropping action translates into I6 as "Drop".

The specification of the dropping action is "Dropping is one of five actions
by which an actor can get rid of something carried: the others are inserting
(into a container), putting (onto a supporter), giving (to someone else) and
eating. Dropping means dropping onto the actor's current floor, which is
usually the floor of a room - but might be the inside of a box if the actor
is also inside that box, and so on.

The can't drop clothes being worn rule silently tries the taking off action
on any clothing being dropped: unlisting this rule removes both this behaviour
and also the requirement that clothes cannot simply be dropped."

Check an actor dropping (this is the can't drop yourself rule):
	if the noun is the actor, stop the action with library message putting
		it on action number 4.

Check an actor dropping (this is the can't drop what's already dropped rule):
	if the noun is in the holder of the actor, stop the action with library
		message dropping action number 1 for the noun.

Check an actor dropping (this is the can't drop what's not held rule):
	if the actor is carrying the noun, continue the action;
	if the actor is wearing the noun, continue the action;
	stop the action with library message dropping action number 2 for the noun.

Check an actor dropping (this is the can't drop clothes being worn rule):
	if the actor is wearing the noun:
		issue library message dropping action number 3 for the noun;
		silently try the actor trying taking off the noun;
		if the actor is wearing the noun, stop the action;

Check an actor dropping (this is the can't drop if this exceeds carrying
	capacity rule):
	let H be the holder of the actor;
	if H is a room, continue the action; [room floors have infinite capacity]
	if H provides the property carrying capacity:
		if H is a supporter:
			if the number of things on H is at least the carrying capacity of H:
				if the actor is the player,
					issue library message dropping action number 5 for H;
				stop the action;
		otherwise if H is a container:
			if the number of things in H is at least the carrying capacity of H:
				if the actor is the player,
					issue library message dropping action number 6 for H;
				stop the action;

Carry out an actor dropping (this is the standard dropping rule):
	now the noun is in the holder of the actor.

Report an actor dropping (this is the standard report dropping rule):
	if the actor is the player, issue library message dropping action number 4
		for the noun;
	otherwise issue actor-based library message dropping action number 7 for the noun.

Putting it on is an action applying to two things.
The putting it on action translates into I6 as "PutOn".

The specification of the putting it on action is "By this action, an actor puts
something he is holding on top of a supporter: for instance, putting an apple
on a table."

Check an actor putting something on (this is the convert put to drop where possible rule):
	if the second noun is down or the actor is on the second noun,
		convert to the dropping action on the noun.

Check an actor putting something on (this is the can't put what's not held rule):
	if the actor is carrying the noun, continue the action;
	if the actor is wearing the noun, continue the action;
	issue miscellaneous library message number 26 for the noun;
	silently try the actor taking the noun;
	if the actor is carrying the noun, continue the action;
	stop the action with library message putting it on action number 1 for the noun.

Check an actor putting something on (this is the can't put something on itself rule):
	let the noun-CPC be the component parts core of the noun;
	let the second-CPC be the component parts core of the second noun;
	let the transfer ceiling be the common ancestor of the noun-CPC with the second-CPC;
	if the transfer ceiling is the noun-CPC,
		stop the action with library message putting it on action number 2 for
			the noun.

Check an actor putting something on (this is the can't put onto what's not a supporter rule):
	if the second noun is not a supporter,
		stop the action with library message putting it on action number 3 for
			the second noun.

Check an actor putting something on (this is the can't put onto something being carried rule):
	if the actor encloses the second noun,
		stop the action with library message putting it on action number 4 for
			the second noun.

Check an actor putting something on (this is the can't put clothes being worn rule):
	if the actor is wearing the noun:
		issue library message putting it on action number 5 for the noun;
		silently try the actor trying taking off the noun;
		if the actor is wearing the noun, stop the action;

Check an actor putting something on (this is the can't put if this exceeds
	carrying capacity rule):
	if the second noun provides the property carrying capacity:
		if the number of things on the second noun is at least the carrying capacity
			of the second noun,
			stop the action with library message putting it on action number 6 for
			the second noun;

Carry out an actor putting something on (this is the standard putting rule):
	now the noun is on the second noun.

Report an actor putting something on (this is the concise report putting rule):
	if the actor is the player and the I6 parser is running multiple actions,
		stop the action with library message putting it on action number 7
		for the noun;
	otherwise continue the action.

Report an actor putting something on (this is the standard report putting rule):
	if the actor is the player, issue library message putting it on action
		number 8 for the noun;
	otherwise issue actor-based library message putting it on action
		number 9 for the noun.

Inserting it into is an action applying to two things.
The inserting it into action translates into I6 as "Insert".

The specification of the inserting it into action is "By this action, an actor puts
something he is holding into a container: for instance, putting a coin into a
collection box."

Check an actor inserting something into (this is the convert insert to drop where
	possible rule):
	if the second noun is down or the actor is in the second noun,
		convert to the dropping action on the noun.

Check an actor inserting something into (this is the can't insert what's not held rule):
	if the actor is carrying the noun, continue the action;
	if the actor is wearing the noun, continue the action;
	issue miscellaneous library message number 26 for the noun;
	silently try the actor taking the noun;
	if the actor is carrying the noun, continue the action;
	stop the action.

Check an actor inserting something into (this is the can't insert something into itself rule):
	let the noun-CPC be the component parts core of the noun;
	let the second-CPC be the component parts core of the second noun;
	let the transfer ceiling be the common ancestor of the noun-CPC with the second-CPC;
	if the transfer ceiling is the noun-CPC,
		stop the action with library message inserting it into action number 5 for
			the noun.

Check an actor inserting something into (this is the can't insert into closed containers rule):
	if the second noun is a closed container,
		stop the action with library message inserting it into action number 3 for
			the second noun.

Check an actor inserting something into (this is the can't insert into what's not a
	container rule):
	if the second noun is not a container,
		stop the action with library message inserting it into action number 2 for
			the second noun.

Check an actor inserting something into (this is the can't insert clothes being worn rule):
	if the actor is wearing the noun:
		issue library message inserting it into action number 6 for the noun;
		silently try the actor trying taking off the noun;
		if the actor is wearing the noun, stop the action;

Check an actor inserting something into (this is the can't insert if this exceeds
	carrying capacity rule):
	if the second noun provides the property carrying capacity:
		if the number of things in the second noun is at least the carrying capacity
		of the second noun,
			stop the action with library message inserting it into action number 7 for
				the second noun;

Carry out an actor inserting something into (this is the standard inserting rule):
	now the noun is in the second noun.

Report an actor inserting something into (this is the concise report inserting rule):
	if the actor is the player and the I6 parser is running multiple actions,
		stop the action with library message inserting it into action number 8
		for the noun;
	otherwise continue the action.

Report an actor inserting something into (this is the standard report inserting rule):
	if the actor is the player, issue library message inserting it into action
		number 9 for the noun;
	otherwise issue actor-based library message inserting it into action number 10 for the noun.

Eating is an action applying to one carried thing.
The eating action translates into I6 as "Eat".

The specification of the eating action is "Eating is the only one of the
built-in actions which can, in effect, destroy something: the carry out
rule removes what's being eaten from play, and nothing in the Standard
Rules can then get at it again.

Note that, uncontroversially, one can only eat things with the 'edible'
either/or property, and also that, more controversially, one can only
eat things currently being held. This means that a player standing next
to a bush with berries who types EAT BERRIES will force a '(first taking
the berries)' action."

Check an actor eating (this is the can't eat unless edible rule):
	if the noun is not a thing or the noun is not edible,
		stop the action with library message eating action number 1 for the noun.

Check an actor eating (this is the can't eat clothing without removing it first rule):
	if the actor is wearing the noun:
		issue library message dropping action number 3 for the noun;
		try the actor trying taking off the noun;
		if the actor is wearing the noun, stop the action;

Carry out an actor eating (this is the standard eating rule):
	remove the noun from play.

Report an actor eating (this is the standard report eating rule):
	if the actor is the player, issue library message eating action number 2
		for the noun;
	otherwise issue actor-based library message eating action number 3 for the noun.

Section SR4/3 - Standard actions which move the actor

Going is an action applying to one visible thing.
The going action translates into I6 as "Go".

The specification of the going action is "This is the action which allows people
to move from one room to another, using whatever map connections and doors are
to hand. The Standard Rules are written so that the noun can be either a
direction or a door in the location of the actor: while the player's commands
only lead to going actions with directions as nouns, going actions can also
happen as a result of entering actions, and then the noun can indeed be
a door."

The going action has a room called the room gone from (matched as "from").
The going action has an object called the room gone to (matched as "to").
The going action has an object called the door gone through (matched as "through").
The going action has an object called the vehicle gone by (matched as "by").
The going action has an object called the thing gone with (matched as "with").

Rule for setting action variables for going (this is the standard set going variables rule):
	now the thing gone with is the item-pushed-between-rooms;
	now the room gone from is the location of the actor;
	if the actor is in an enterable vehicle (called the carriage),
		now the vehicle gone by is the carriage;
	let the target be nothing;
	if the noun is a direction:
		let direction D be the noun;
		let the target be the room-or-door direction D from the room gone from;
	otherwise:
		if the noun is a door, let the target be the noun;
	if the target is a door:
		now the door gone through is the target;
		now the target is the other side of the target from the room gone from;
	now the room gone to is the target.

Check an actor going when the actor is on a supporter (called the chaise)
	(this is the stand up before going rule):
	issue library message going action number 27 for the chaise;
	silently try the actor exiting.

Check an actor going (this is the can't travel in what's not a vehicle rule):
	let H be the holder of the actor;
	if H is the room gone from, continue the action;
	if H is the vehicle gone by, continue the action;
	stop the action with library message going action number 1 for H.

Check an actor going (this is the can't go through undescribed doors rule):
	if the door gone through is not nothing and the door gone through is undescribed,
		stop the action with library message going action number 2 for the room gone from.

Check an actor going (this is the can't go through closed doors rule):
	if the door gone through is not nothing and the door gone through is closed:
		issue library message going action number 28 for the door gone through;
		silently try the actor opening the door gone through;
		if the door gone through is open, continue the action;
		stop the action.

Check an actor going (this is the determine map connection rule):
	let the target be nothing;
	if the noun is a direction:
		let direction D be the noun;
		let the target be the room-or-door direction D from the room gone from;
	otherwise:
		if the noun is a door, let the target be the noun;
	if the target is a door:
		now the target is the other side of the target from the room gone from;
	now the room gone to is the target.

Check an actor going (this is the can't go that way rule):
	if the room gone to is nothing:
		if the door gone through is nothing, stop the action with library
			message going action number 2 for the room gone from;
		stop the action with library message going action number 6 for the door gone through;

Carry out an actor going (this is the move player and vehicle rule):
	if the vehicle gone by is nothing,
		surreptitiously move the actor to the room gone to during going;
	otherwise
		surreptitiously move the vehicle gone by to the room gone to during going.

Carry out an actor going (this is the move floating objects rule):
	if the actor is the player,
		update backdrop positions.

Carry out an actor going (this is the check light in new location rule):
	if the actor is the player,
		surreptitiously reckon darkness.

Report an actor going (this is the describe room gone into rule):
	if the player is the actor:
		produce a room description with going spacing conventions;
	otherwise:
		if the noun is a direction:
			if the location is the room gone from:
				if the location is the room gone to:
					continue the action;
				otherwise:
					if the noun is up :
						issue actor-based library message going action number 8;
					otherwise if the noun is down:
						issue actor-based library message going action number 9;
					otherwise:
						issue actor-based library message going action number 10 for the noun;
			otherwise:
				let the back way be the opposite of the noun;
				if the location is the room gone to:
					let the room back the other way be the room back way from the
						location;
					let the room normally this way be the room noun from the
						room gone from;
					if the room back the other way is the room gone from or
						the room back the other way is the room normally this way:
						if the back way is up:
							issue actor-based library message going action number 11;
						otherwise if the back way is down:
							issue actor-based library message going action number 12;
						otherwise:
							issue actor-based library message going action number 13
								for the back way;
					otherwise:
						issue actor-based library message going action number 14;
				otherwise:
					if the back way is up :
						issue actor-based library message going action number 15
							for the room gone to;
					otherwise if the back way is down:
						issue actor-based library message going action number 16
							for the room gone to;
					otherwise:
						issue actor-based library message going action number 17
							for the room gone to and the back way;
		otherwise if the location is the room gone from:
			issue actor-based library message going action number 18 for the noun;
		otherwise:
			issue actor-based library message going action number 19 for the noun;
		if the vehicle gone by is not nothing:
			say " ";
			if the vehicle gone by is a supporter, issue actor-based library message
				going action number 20 for the vehicle gone by;
			otherwise issue actor-based library message going action number 21
				for the vehicle gone by;
		if the thing gone with is not nothing:
			if the player is within the thing gone with:
				issue actor-based library message going action number 22 for the thing gone with;
			otherwise if the player is within the vehicle gone by:
				issue actor-based library message going action number 23 for the thing gone with;
			otherwise if the location is the room gone from:
				issue actor-based library message going action number 24 for the thing gone with;
			otherwise:
				issue actor-based library message going action number 25 for the thing gone with;
		if the player is within the vehicle gone by and the player is not
			within the thing gone with:
			issue actor-based library message going action number 26;
			say ".";
			try looking;
			continue the action;
		say ".";

Entering is an action applying to one thing.
The entering action translates into I6 as "Enter".

The specification of the entering action is "Whereas the going action allows
people to move from one location to another in the model world, the entering
action is for movement inside a location: for instance, climbing into a cage
or sitting on a couch. (Entering is not allowed to change location, so any
attempt to enter a door is converted into a going action.) What makes
entering trickier than it looks is that the player may try to enter an
object which is itself inside, or part of, something else, which might in
turn be... and so on. To preserve realism, the implicitly pass through other
barriers rule automatically generates entering and exiting actions needed
to pass between anything which might be in the way: for instance, in a
room with two open cages, an actor in cage A who tries entering cage B first
has to perform an exiting action."

Rule for supplying a missing noun while entering (this is the find what to enter
rule):
	if something enterable (called the box) is in the location,
		now the noun is the box;
	otherwise continue the activity.

The find what to enter rule is listed last in the for supplying a missing noun
rulebook.

Check an actor entering (this is the convert enter door into go rule):
	if the noun is a door, convert to the going action on the noun.

Check an actor entering (this is the convert enter compass direction into go rule):
	if the noun is a direction, convert to the going action on the noun.

Check an actor entering (this is the can't enter what's already entered rule):
	let the local ceiling be the common ancestor of the actor with the noun;
	if the local ceiling is the noun, stop the action with library message
		entering action number 1 for the noun.

Check an actor entering (this is the can't enter what's not enterable rule):
	if the noun is not enterable, stop the action with library message
		entering action number 2 for the noun.

Check an actor entering (this is the can't enter closed containers rule):
	if the noun is a closed container, stop the action with library message
		entering action number 3 for the noun.

Check an actor entering (this is the can't enter something carried rule):
	let the local ceiling be the common ancestor of the actor with the noun;
	if the local ceiling is the actor, stop the action with library message
		entering action number 4 for the noun.

Check an actor entering (this is the implicitly pass through other barriers rule):
	if the holder of the actor is the holder of the noun, continue the action;
	let the local ceiling be the common ancestor of the actor with the noun;
	while the holder of the actor is not the local ceiling:
		let the target be the holder of the actor;
		issue library message entering action number 6 for the target;
		silently try the actor trying exiting;
		if the holder of the actor is the target, stop the action;
	if the holder of the actor is the noun, stop the action;
	if the holder of the actor is the holder of the noun, continue the action;
	let the target be the holder of the noun;
	if the noun is part of the target, let the target be the holder of the target;
	while the target is a thing:
		if the holder of the target is the local ceiling:
			issue library message entering action number 7 for the target;
			silently try the actor trying entering the target;
			if the holder of the actor is not the target, stop the action;
			convert to the entering action on the noun;
			continue the action;
		let the target be the holder of the target;

Carry out an actor entering (this is the standard entering rule):
	surreptitiously move the actor to the noun.

Report an actor entering (this is the standard report entering rule):
	if the actor is the player:
		issue library message entering action number 5 for the noun;
	otherwise if the noun is a container:
		issue actor-based library message entering action number 8 for the noun;
	otherwise:
		issue actor-based library message entering action number 9 for the noun;
	continue the action.

Report an actor entering (this is the describe contents entered into rule):
	if the actor is the player, describe locale for the noun.

Exiting is an action applying to nothing.
The exiting action translates into I6 as "Exit".
The exiting action has an object called the container exited from (matched as "from").

The specification of the exiting action is "Whereas the going action allows
people to move from one location to another in the model world, and the
entering action is for movement deeper inside the objects in a location,
the exiting action is for movement back out towards the main floor area.
Climbing out of a cupboard, for instance, is an exiting action. Exiting
when already in the main floor area of a room with a map connection to
the outside is converted to a going action. Finally, note that whereas
entering works for either containers or supporters, exiting is purely for
getting oneself out of containers: if the actor is on top of a supporter
instead, an exiting action is converted to the getting off action."

Setting action variables for exiting:
	now the container exited from is the holder of the actor.

Check an actor exiting (this is the convert exit into go out rule):
	let the local room be the location of the actor;
	if the container exited from is the local room:
		if the room-or-door outside from the local room is not nothing,
			convert to the going action on the outside;

Check an actor exiting (this is the can't exit when not inside anything rule):
	let the local room be the location of the actor;
	if the container exited from is the local room, stop the action with
		library message exiting action number 1 for the actor.

Check an actor exiting (this is the can't exit closed containers rule):
	if the actor is in a closed container (called the cage), stop the action
		with library message exiting action number 2 for the cage.

Check an actor exiting (this is the convert exit into get off rule):
	if the actor is on a supporter (called the platform),
		convert to the getting off action on the platform.

Carry out an actor exiting (this is the standard exiting rule):
	let the former exterior be the not-counting-parts holder of the container exited from;
	surreptitiously move the actor to the former exterior.

Report an actor exiting (this is the standard report exiting rule):
	if the actor is the player:
		issue library message exiting action number 3 for the container exited from;
	otherwise:
		issue actor-based library message exiting action number 6 for the container exited from;
	continue the action.

Report an actor exiting (this is the describe room emerged into rule):
	if the actor is the player,
		produce a room description with going spacing conventions.

Getting off is an action applying to one thing.
The getting off action translates into I6 as "GetOff".

The specification of the getting off action is "The getting off action is for
actors who are currently on top of a supporter: perhaps standing on a platform,
but maybe only sitting on a chair or even lying down in bed. Unlike the similar
exiting action, getting off takes a noun: the platform, chair, bed or what
have you."

Check an actor getting off (this is the can't get off things rule):
	if the actor is on the noun, continue the action;
	if the actor is carried by the noun, continue the action;
	stop the action with library message getting off action number 1 for the noun.

Carry out an actor getting off (this is the standard getting off rule):
	let the former exterior be the not-counting-parts holder of the noun;
	surreptitiously move the actor to the former exterior.

Report an actor getting off (this is the standard report getting off rule):
	if the actor is the player:
		issue library message exiting action number 3 for the noun;
	otherwise:
		issue actor-based library message exiting action number 5 for the noun;
	continue the action.

Report an actor getting off (this is the describe room stood up into rule):
	if the actor is the player,
		produce a room description with going spacing conventions.

Section SR4/4 - Standard actions concerning the actor's vision

Looking is an action applying to nothing.
The looking action translates into I6 as "Look".

The specification of the looking action is "The looking action describes the
player's current room and any visible items, but is made more complicated
by the problem of visibility. Inform calculates this by dividing the room
into visibility levels. For an actor on the floor of a room, there is only
one such level: the room itself. But an actor sitting on a chair inside
a packing case which is itself on a gantry would have four visibility levels:
chair, case, gantry, room. The looking rules use a special phrase, 'the
visibility-holder of X', to go up from one level to the next: thus the
visibility-holder of the case is the gantry.

The 'visibility level count' is the number of levels which the player can
actually see, and the 'visibility ceiling' is the uppermost visible level.
For a player standing on the floor of a lighted room, this will be a count
of 1 with the ceiling set to the room. But a player sitting on a chair in
a closed opaque packing case would have visibility level count 2, and
visibility ceiling equal to the case. Moreover, light has to be available
in order to see anything at all: if the player is in darkness, the level
count is 0 and the ceiling is nothing.

Finally, note that several actions other than looking also produce room
descriptions in some cases. The most familiar is going, but exiting a
container or getting off a supporter will also generate a room description.
(The phrase used by the relevant rules is 'produce a room description with
going spacing conventions' and carry out or report rules for newly written
actions are welcome to use this too if they would like to. The spacing
conventions affect paragraph division, and note that the main description
paragraph may be omitted for a place not newly visited, depending on the
VERBOSE settings.) Room descriptions like this are produced by running the
check, carry out and report rules for looking, but are not subject to
before, instead or after rules: so they do not count as a new action. The
looking variable 'room-describing action' holds the action name of the
reason a room description is currently being made: if the player typed
LOOK, this will indeed be set to the looking action, but if we're
describing a room just reached by GO EAST, say, it will be set to the going
action. This can be used to customise carry out looking rules so that
different forms of description are used on going to a room as compared with
looking around while already there."

The looking action has an action name called the room-describing action.
The looking action has a truth state called abbreviated form allowed.
The looking action has a number called the visibility level count.
The looking action has an object called the visibility ceiling.

Setting action variables for looking (this is the determine visibility ceiling
	rule):
	if the actor is the player, calculate visibility ceiling at low level;
	now the visibility level count is the visibility ceiling count calculated;
	now the visibility ceiling is the visibility ceiling calculated;
	now the room-describing action is the looking action.

Carry out looking (this is the room description heading rule):
	say bold type;
	if the visibility level count is 0:
		begin the printing the name of a dark room activity;
		if handling the printing the name of a dark room activity,
			issue miscellaneous library message number 71;
		end the printing the name of a dark room activity;
	otherwise if the visibility ceiling is the location:
		say "[visibility ceiling]";
	otherwise:
		say "[The visibility ceiling]";
	say roman type;
	let intermediate level be the visibility-holder of the actor;
	repeat with intermediate level count running from 2 to the visibility level count:
		issue library message looking action number 8 for the intermediate level;
		let the intermediate level be the visibility-holder of the intermediate level;
	say line break;
	say run paragraph on with special look spacing.

Carry out looking (this is the room description body text rule):
	if the visibility level count is 0:
		if set to abbreviated room descriptions, continue the action;
		if set to sometimes abbreviated	room descriptions and
			abbreviated form allowed is true and
			darkness witnessed is true,
			continue the action;
		begin the printing the description of a dark room activity;
		if handling the printing the description of a dark room activity,
			issue miscellaneous library message number 17;
		end the printing the description of a dark room activity;
	otherwise if the visibility ceiling is the location:
		if set to abbreviated room descriptions, continue the action;
		if set to sometimes abbreviated	room descriptions and abbreviated form
			allowed is true and the location is visited, continue the action;
		print the location's description;

Carry out looking (this is the room description paragraphs about objects rule):
	if the visibility level count is greater than 0:
		let the intermediate position be the actor;
		let the IP count be the visibility level count;
		while the IP count is greater than 0:
			now the intermediate position is marked for listing;
			let the intermediate position be the visibility-holder of the
				intermediate position;
			decrease the IP count by 1;
		let the top-down IP count be the visibility level count;
		while the top-down IP count is greater than 0:
			let the intermediate position be the actor;
			let the IP count be 0;
			while the IP count is less than the top-down IP count:
				let the intermediate position be the visibility-holder of the
					intermediate position;
				increase the IP count by 1;
			[if we ever support I6-style inside descriptions, here's where]
			describe locale for the intermediate position;
			decrease the top-down IP count by 1;
	continue the action;

Carry out looking (this is the check new arrival rule):
	if in darkness:
		now the darkness witnessed is true;
	otherwise:
		if the location is a room, now the location is visited;

Report an actor looking (this is the other people looking rule):
	if the actor is not the player,
		issue actor-based library message looking action number 9.

Examining is an action applying to one visible thing and requiring light.
The examining action translates into I6 as "Examine".

The specification of the examining action is "The act of looking closely at
something. Note that the noun could be either a direction or a thing, which
is why the Standard Rules include the 'examine directions rule' to deal with
directions: it simply says 'You see nothing unexpected in that direction.'
and stops the action. (If you would like to handle directions differently,
list another rule instead of this one in the carry out examining rules.)

Some things have no description property, or rather, have only a blank text
as one. It's possible that something interesting may be said anyway (see
the rules for directions, containers, supporters and devices), but if not,
we give up with a bland response. This is done by the examine undescribed
things rule."

The examining action has a truth state called examine text printed.

Carry out examining (this is the standard examining rule):
	if the noun provides the property description and the description of the noun is not "":
		say "[the description of the noun][line break]";
		now examine text printed is true.

Carry out examining (this is the examine directions rule):
	if the noun is a direction:
		issue library message examining action number 5 for the noun;
		now examine text printed is true.

Carry out examining (this is the examine containers rule):
	if the noun is a container:
		if the noun is open or the noun is transparent:
			if something described which is not scenery is in the noun and something which
				is not the player is in the noun:
				issue library message searching action number 7 for the noun;
				now examine text printed is true;
			otherwise if examine text printed is false:
				if the player is in the noun:
					make no decision;
				issue library message searching action number 6 for the noun;
				now examine text printed is true;

Carry out examining (this is the examine supporters rule):
	if the noun is a supporter:
		if something described which is not scenery is on the noun and something which is
			not the player is on the noun:
			issue library message looking action number 4 for the noun;
			now examine text printed is true.

Carry out examining (this is the examine devices rule):
	if the noun is a device:
		issue library message examining action number 3 for the noun;
		now examine text printed is true.

Carry out examining (this is the examine undescribed things rule):
	if examine text printed is false:
		issue library message examining action number 2 for the noun.

Report an actor examining (this is the report other people examining rule):
	if the actor is not the player,
		issue actor-based library message examining action number 4 for the noun.

Looking under is an action applying to one visible thing and requiring light.
The looking under action translates into I6 as "LookUnder".

The specification of the looking under action is "The standard Inform world
model does not have a concept of things being under other things, so this
action is only minimally provided by the Standard Rules, but it exists here
for traditional reasons (and because, after all, LOOK UNDER TABLE is the
sort of command which ought to be recognised even if it does nothing useful).
The action ordinarily either tells the player he finds nothing of interest,
or reports that somebody else has looked under something.

The usual way to make this action do something useful is to write a rule
like 'Instead of looking under the cabinet for the first time: now the
player has the silver key; say ...' and so on."

Carry out an actor looking under (this is the standard looking under rule):
	stop the action with library message looking under action number 2 for
		the noun.

Report an actor looking under (this is the report other people looking under rule):
	if the actor is not the player,
		issue actor-based library message looking under action number 3 for the noun.

Searching is an action applying to one thing and requiring light.
The searching action translates into I6 as "Search".

The specification of the searching action is "Searching looks at the contents
of an open or transparent container, or at the items on top of a supporter.
These are often mentioned in room descriptions already, and then the action
is unnecessary, but that wouldn't be true for something like a kitchen
cupboard which is scenery - mentioned in passing in a room description, but
not made a fuss of. Searching such a cupboard would then, by listing its
contents, give the player more information than the ordinary room description
shows.

The usual check rules restrict searching to containers and supporters: so
the Standard Rules do not allow the searching of people, for instance. But
it is easy to add instead rules ('Instead of searching Dr Watson: ...') or
even a new carry out rule ('Check searching someone (called the suspect): ...')
to extend the way searching normally works."

Check an actor searching (this is the can't search unless container or supporter rule):
	if the noun is not a container and the noun is not a supporter,
		stop the action with library message searching action number 4 for
			the noun.

Check an actor searching (this is the can't search closed opaque containers rule):
	if the noun is a closed opaque container,
		stop the action with library message searching action number 5 for
			the noun.

Report searching a container (this is the standard search containers rule):
	if the noun contains a described thing which is not scenery,
		issue library message searching action number 7 for the noun;
	otherwise
		issue library message searching action number 6 for the noun.

Report searching a supporter (this is the standard search supporters rule):
	if the noun supports a described thing which is not scenery,
		issue library message searching action number 3 for the noun;
	otherwise
		issue library message searching action number 2 for the noun.

Report an actor searching (this is the report other people searching rule):
	if the actor is not the player,
		issue actor-based library message searching action number 8 for the noun.

Consulting it about is an action applying to one thing and one topic.
The consulting it about action translates into I6 as "Consult".

The specification of the consulting it about action is "Consulting is a very
flexible and potentially powerful action, but only because it leaves almost
all of the work to the author to deal with directly. The idea is for it to
respond to commands such as LOOK UP HENRY FITZROY IN HISTORY BOOK, where
the topic would be the snippet of command HENRY FITZROY and the thing would
be the book.

The Standard Rules simply parry such requests by saying that the player finds
nothing of interest. All interesting responses must be provided by the author,
using rules like 'Instead of consulting the history book about...'"

Report an actor consulting something about (this is the block consulting rule):
	if the actor is the player,
		issue library message consulting it about action number 1 for the noun;
	otherwise
		issue actor-based library message consulting it about action number 2 for the noun.

Section SR4/5 - Standard actions which change the state of things

Locking it with is an action applying to one thing and one carried thing.
The locking it with action translates into I6 as "Lock".

The specification of the locking it with action is "Locking is the act of
using an object such as a key to ensure that something such as a door or
container cannot be opened unless first unlocked. (Only closed things can be
locked.)

Locking can be performed on any kind of thing which provides the either/or
properties lockable, locked, openable and open. The 'can't lock without a lock
rule' tests to see if the noun both provides the lockable property, and if
it is in fact lockable: it is then assumed that the other properties can
safely be checked. In the Standard Rules, the container and door kinds both
satisfy these requirements.

We can create a new kind on which opening, closing, locking and unlocking
will work thus: 'A briefcase is a kind of thing. A briefcase can be openable.
A briefcase can be open. A briefcase can be lockable. A briefcase can be
locked. A briefcase is usually openable, lockable, open and unlocked.'

Inform checks whether the key fits using the 'can't lock without the correct
key rule'. To satisfy this, the actor must be directly holding the second
noun, and it must be the current value of the 'matching key' property for
the noun. (This property is seldom referred to directly because it is
automatically set by assertions like 'The silver key unlocks the wicket
gate.')

The Standard Rules provide locking and unlocking actions at a fairly basic
level: they can be much enhanced using the extension Locksmith by Emily
Short, which is included with all distributions of Inform."

Check an actor locking something with (this is the can't lock without a lock rule):
	if the noun provides the property lockable and the noun is lockable,
		continue the action;
	stop the action with library message locking it with action number 1 for the noun.

Check an actor locking something with (this is the can't lock what's already
	locked rule):
	if the noun is locked,
		stop the action with library message locking it with action number 2 for the noun.

Check an actor locking something with (this is the can't lock what's open rule):
	if the noun is open,
		stop the action with library message locking it with action number 3 for the noun.

Check an actor locking something with (this is the can't lock without the correct key rule):
	if the holder of the second noun is not the actor or
		the noun does not provide the property matching key or
		the matching key of the noun is not the second noun,
		stop the action with library message locking it with action number 4 for the second noun.

Carry out an actor locking something with (this is the standard locking rule):
	now the noun is locked.

Report an actor locking something with (this is the standard report locking rule):
	if the actor is the player:
		issue library message locking it with action number 5 for the noun;
	otherwise:
		if the actor is visible, issue actor-based library message locking it with
			action number 6 for the noun;

Unlocking it with is an action applying to one thing and one carried thing.
The unlocking it with action translates into I6 as "Unlock".

The specification of the unlocking it with action is "Unlocking undoes the
effect of locking, and renders the noun openable again provided that the
actor is carrying the right key (which must be the second noun).

Unlocking can be performed on any kind of thing which provides the either/or
properties lockable, locked, openable and open. The 'can't unlock without a lock
rule' tests to see if the noun both provides the lockable property, and if
it is in fact lockable: it is then assumed that the other properties can
safely be checked. In the Standard Rules, the container and door kinds both
satisfy these requirements.

We can create a new kind on which opening, closing, locking and unlocking
will work thus: 'A briefcase is a kind of thing. A briefcase can be openable.
A briefcase can be open. A briefcase can be lockable. A briefcase can be
locked. A briefcase is usually openable, lockable, open and unlocked.'

Inform checks whether the key fits using the 'can't unlock without the correct
key rule'. To satisfy this, the actor must be directly holding the second
noun, and it must be the current value of the 'matching key' property for
the noun. (This property is seldom referred to directly because it is
automatically set by assertions like 'The silver key unlocks the wicket
gate.')

The Standard Rules provide locking and unlocking actions at a fairly basic
level: they can be much enhanced using the extension Locksmith by Emily
Short, which is included with all distributions of Inform."

Check an actor unlocking something with (this is the can't unlock without a lock rule):
	if the noun provides the property lockable and the noun is lockable,
		continue the action;
	stop the action with library message unlocking it with action number 1 for the noun.

Check an actor unlocking something with (this is the can't unlock what's already unlocked rule):
	if the noun is not locked,
		stop the action with library message unlocking it with action number 2 for the noun.

Check an actor unlocking something with (this is the can't unlock without the correct key rule):
	if the holder of the second noun is not the actor or
		the noun does not provide the property matching key or
		the matching key of the noun is not the second noun,
		stop the action with library message unlocking it with action number 3 for the
			second noun.

Carry out an actor unlocking something with (this is the standard unlocking rule):
	now the noun is not locked.

Report an actor unlocking something with (this is the standard report unlocking rule):
	if the actor is the player:
		issue library message unlocking it with action number 4 for the noun;
	otherwise:
		if the actor is visible, issue actor-based library message unlocking it with
			action number 5 for the noun;

Switching on is an action applying to one thing.
The switching on action translates into I6 as "SwitchOn".

The specification of the switching on action is "The switching on and switching
off actions are for the simplest kind of machinery operation: they are for
objects representing machines (or more likely parts of machines), which are
considered to be either off or on at any given time.

The actions are intended to be used where the noun is a device, but in fact
they could work just as well with any kind which can be 'switched on' or
'switched off'."

Check an actor switching on (this is the can't switch on unless switchable rule):
	if the noun provides the property switched on, continue the action;
	stop the action with library message switching on action number 1 for the noun.

Check an actor switching on (this is the can't switch on what's already on rule):
	if the noun is switched on,
		stop the action with library message switching on action number 2 for the noun.

Carry out an actor switching on (this is the standard switching on rule):
	now the noun is switched on.

Report an actor switching on (this is the standard report switching on rule):
	if the actor is the player, issue library message switching on action number 3
		for the noun;
	otherwise issue actor-based library message switching on action number 4 for the noun;

Switching off is an action applying to one thing.
The switching off action translates into I6 as "SwitchOff".

The specification of the switching off action is "The switching off and switching
on actions are for the simplest kind of machinery operation: they are for
objects representing machines (or more likely parts of machines), which are
considered to be either off or on at any given time.

The actions are intended to be used where the noun is a device, but in fact
they could work just as well with any kind which can be 'switched on' or
'switched off'."

Check an actor switching off (this is the can't switch off unless switchable rule):
	if the noun provides the property switched on, continue the action;
	stop the action with library message switching off action number 1 for the noun.

Check an actor switching off (this is the can't switch off what's already off rule):
	if the noun is switched off,
		stop the action with library message switching off action number 2 for the noun.

Carry out an actor switching off (this is the standard switching off rule):
	now the noun is switched off.

Report an actor switching off (this is the standard report switching off rule):
	if the actor is the player, issue library message switching off action number 3
		for the noun;
	otherwise issue actor-based library message switching off action number 4 for the noun;

Opening is an action applying to one thing.
The opening action translates into I6 as "Open".

The specification of the opening action is "Opening makes something no longer
a physical barrier. The action can be performed on any kind of thing which
provides the either/or properties openable and open. The 'can't open unless
openable rule' tests to see if the noun both can be and actually is openable.
(It is assumed that anything which can be openable can also be open.)
In the Standard Rules, the container and door kinds both satisfy these
requirements.

In the event that the thing to be opened is also lockable, we are forbidden
to open it when it is locked. Both containers and doors can be lockable,
but the opening and closing actions would also work fine with kinds which
cannot be.

We can create a new kind on which opening and closing will work thus:
'A case file is a kind of thing. A case file can be openable.
A case file can be open. A case file is usually openable and closed.'

The meaning of open and closed is different for different kinds of thing.
When a container is closed, that means people outside cannot reach in,
and vice versa; when a door is closed, people cannot use the 'going' action
to pass through it. If we were to create a new kind such as 'case file',
we would also need to write rules to make the open and closed properties
interesting for this kind."

Check an actor opening (this is the can't open unless openable rule):
	if the noun provides the property openable and the noun is openable,
		continue the action;
	stop the action with library message opening action number 1 for the noun.

Check an actor opening (this is the can't open what's locked rule):
	if the noun provides the property lockable and the noun is locked,
		stop the action with library message opening action number 2 for the noun.

Check an actor opening (this is the can't open what's already open rule):
	if the noun is open,
		stop the action with library message opening action number 3 for the noun.

Carry out an actor opening (this is the standard opening rule):
	now the noun is open.

Report an actor opening (this is the reveal any newly visible interior rule):
	if the actor is the player and
		the noun is an opaque container and
		the first thing held by the noun is not nothing and
		the noun does not enclose the actor,
		stop the action with library message opening action number 4 for the noun.

Report an actor opening (this is the standard report opening rule):
	if the actor is the player:
		issue library message opening action number 5 for the noun;
	otherwise if the player can see the actor:
		issue actor-based library message opening action number 6 for the noun;
	otherwise:
		issue actor-based library message opening action number 7 for the noun;

Closing is an action applying to one thing.
The closing action translates into I6 as "Close".

The specification of the closing action is "Closing makes something into
a physical barrier. The action can be performed on any kind of thing which
provides the either/or properties openable and open. The 'can't close unless
openable rule' tests to see if the noun both can be and actually is openable.
(It is assumed that anything which can be openable can also be open, and
hence can also be closed.) In the Standard Rules, the container and door
kinds both satisfy these requirements.

We can create a new kind on which opening and closing will work thus:
'A case file is a kind of thing. A case file can be openable.
A case file can be open. A case file is usually openable and closed.'

The meaning of open and closed is different for different kinds of thing.
When a container is closed, that means people outside cannot reach in,
and vice versa; when a door is closed, people cannot use the 'going' action
to pass through it. If we were to create a new kind such as 'case file',
we would also need to write rules to make the open and closed properties
interesting for this kind."

Check an actor closing (this is the can't close unless openable rule):
	if the noun provides the property openable and the noun is openable,
		continue the action;
	stop the action with library message closing action number 1 for the noun.

Check an actor closing (this is the can't close what's already closed rule):
	if the noun is closed,
		stop the action with library message closing action number 2 for the noun.

Carry out an actor closing (this is the standard closing rule):
	now the noun is closed.

Report an actor closing (this is the standard report closing rule):
	if the actor is the player:
		issue library message closing action number 3 for the noun;
	otherwise if the player can see the actor:
		issue actor-based library message closing action number 4 for the noun;
	otherwise:
		issue actor-based library message closing action number 5 for the noun;

Wearing is an action applying to one carried thing.
The wearing action translates into I6 as "Wear".

The specification of the wearing action is "The Standard Rules give Inform
only a simple model of clothing. A thing can be worn only if it has the
either/or property of being 'wearable'. (Typing a sentence like 'Mr Jones
wears the Homburg hat.' automatically implies that the hat is wearable,
which is why we only seldom need to use the word 'wearable' directly.)
There is no checking of how much or how little any actor is wearing, or
how incongruous this may appear: nor any distinction between under or
over-clothes.

To put on an article of clothing, the actor must be directly carrying it,
as enforced by the 'can't wear what's not held rule'."

Check an actor wearing (this is the can't wear what's not clothing rule):
	if the noun is not a thing or the noun is not wearable,
		stop the action with library message wearing action number 1 for the noun.

Check an actor wearing (this is the can't wear what's not held rule):
	if the holder of the noun is not the actor,
		stop the action with library message wearing action number 2 for the noun.

Check an actor wearing (this is the can't wear what's already worn rule):
	if the actor is wearing the noun,
		stop the action with library message wearing action number 3 for the noun.

Carry out an actor wearing (this is the standard wearing rule):
	now the actor wears the noun.

Report an actor wearing (this is the standard report wearing rule):
	if the actor is the player, issue library message wearing action number 4
		for the noun;
	otherwise issue actor-based library message wearing action number 5
		for the noun.

Taking off is an action applying to one carried thing.
The taking off action translates into I6 as "Disrobe".

The specification of the taking off action is "The Standard Rules give Inform
only a simple model of clothing. A thing can be worn only if it has the
either/or property of being 'wearable'. (Typing a sentence like 'Mr Jones
wears the Homburg hat.' automatically implies that the hat is wearable,
which is why we only seldom need to use the word 'wearable' directly.)
There is no checking of how much or how little any actor is wearing, or
how incongruous this may appear: nor any distinction between under or
over-clothes.

When an article of clothing is taken off, it becomes a thing directly
carried by its former wearer, rather than being (say) dropped onto the floor."

Check an actor taking off (this is the can't take off what's not worn rule):
	if the actor is not wearing the noun,
		stop the action with library message taking off action number 1 for the noun.

Carry out an actor taking off (this is the standard taking off rule):
	now the actor carries the noun.

Report an actor taking off (this is the standard report taking off rule):
	if the actor is the player, issue library message taking off action number 2
		for the noun;
	otherwise issue actor-based library message taking off action number 3 for the noun.

Section SR4/6 - Standard actions concerning other people

Giving it to is an action applying to one carried thing and one thing.
The giving it to action translates into I6 as "Give".

The specification of the giving it to action is "This action is indexed by
Inform under 'Actions concerning other people', but it could just as easily
have gone under 'Actions concerning the actor's possessions' because -
like dropping, putting it on or inserting it into - this is an action
which gets rid of something being carried.

The Standard Rules implement this action fully - if it reaches the carry
out and report rulebooks, then the item is indeed transferred to the
recipient, and this is properly reported. But giving something to
somebody is not like putting something on a shelf: the recipient has
to agree. The final check rule, the 'block giving rule', assumes that
the recipient does not consent - so the gift fails to happen. The way
to make the giving action use its abilities fully is to replace the
block giving rule with a rule which makes a more sophisticated decision
about who will accept what from whom, and only blocks some attempts,
letting others run on into the carry out and report rules."

Check an actor giving something to (this is the can't give what you haven't got rule):
	if the actor is not the holder of the noun,
		stop the action with library message giving it to action number 1 for the noun.

Check an actor giving something to (this is the can't give to yourself rule):
	if the actor is the second noun,
		stop the action with library message giving it to action number 2 for the noun.

Check an actor giving something to (this is the can't give to a non-person rule):
	if the second noun is not a person,
		stop the action with library message giving it to action number 4 for the
			second noun.

Check an actor giving something to (this is the can't give clothes being worn rule):
	if the actor is wearing the noun:
		issue library message dropping action number 3 for the noun;
		silently try the actor trying taking off the noun;
		if the actor is wearing the noun, stop the action;

Check an actor giving something to (this is the block giving rule):
	stop the action with library message giving it to action number 3 for the
		second noun.

Carry out an actor giving something to (this is the standard giving rule):
	move the noun to the second noun.

Report an actor giving something to (this is the standard report giving rule):
	if the actor is the player:
		issue library message giving it to action number 5 for the noun;
	otherwise if the second noun is the player:
		issue actor-based library message giving it to action number 6 for the noun;
	otherwise:
		issue actor-based library message giving it to action number 7 for the noun;

Showing it to is an action applying to one carried thing and one visible thing.
The showing it to action translates into I6 as "Show".

The specification of the showing it to action is "Anyone can show anyone
else something which they are carrying, but not some nearby piece of
scenery, say - so this action is suitable for showing the emerald locket
to Katarina, but not showing the Orange River Rock Room to Mr Douglas.

The Standard Rules implement this action in only a minimal way, checking
that it makes sense but then blocking all such attempts with a message
such as 'Katarina is not interested.' - this is the task of the 'block
showing rule'. As a result, there are no carry out or report rules. To
make it into a systematic and interesting action, we would need to
unlist the block showing rule and then to write carry out and report
rules: but usually for IF purposes we only need to make a handful of
special cases of showing work properly, and for those we can simply
write Instead rules to handle them."

Check an actor showing something to (this is the can't show what you haven't
	got rule):
	if the actor is not the holder of the noun,
		stop the action with library message showing it to action number 1
			for the noun.

Check an actor showing something to (this is the convert show to yourself to
	examine rule):
	if the actor is the second noun,
		convert to the examining action on the noun.

Check an actor showing something to (this is the block showing rule):
	stop the action with library message showing it to action number 2
		for the second noun.

Waking is an action applying to one thing.
The waking action translates into I6 as "WakeOther".

The specification of the waking action is "This is the act of jostling
a sleeping person to wake him or her up, and it finds its way into the
Standard Rules only for historical reasons. Inform does not by default
provide any model for people being asleep or awake, so this action does
not do anything in the standard implementation: instead, it is always
stopped by the block waking rule."

Check an actor waking (this is the block waking rule):
	stop the action with library message waking action number 1 for the noun.

Throwing it at is an action applying to one carried thing and one visible thing.
The throwing it at action translates into I6 as "ThrowAt".

The specification of the throwing it at action is "Throwing something at
someone or something is difficult for Inform to model. So many considerations
apply: just because the actor can see the target, does it follow that the
target can accurately hit it? What if the projectile is heavy, like an
anvil, or something not easily aimable, like a feather? What if there
is a barrier in the way, like a cage with bars spaced so that only items
of a certain size get through? And then: what should happen as a result?
Will the projectile break, or do damage, or fall to the floor, or into
a container or onto a supporter? And so on.

Because it seems hopeless to try to model this in any general way,
Inform instead provides the action for the user to attach specific rules to.
The check rules in the Standard Rules simply require that the projectile
is not an item of clothing still worn (this will be relevant for women
attending a Tom Jones concert) but then, in either the 'futile to throw
things at inanimate objects rule' or the 'block throwing at rule', will
refuse to carry out the action with a bland message.

To make throwing do something, then, we must either write Instead rules
for special circumstances, or else unlist these check rules and write
suitable carry out and report rules to pick up the thread."

Check an actor throwing something at (this is the implicitly remove thrown clothing rule):
	if the actor is wearing the noun:
		issue library message dropping action number 3 for the noun;
		silently try the actor trying taking off the noun;
		if the actor is wearing the noun, stop the action;

Check an actor throwing something at (this is the futile to throw things at inanimate
	objects rule):
	if the second noun is not a person,
		stop the action with library message throwing it at action number 1
			for the second noun.

Check an actor throwing something at (this is the block throwing at rule):
	stop the action with library message throwing it at action number 2
		for the noun.

Attacking is an action applying to one thing.
The attacking action translates into I6 as "Attack".

The specification of the attacking action is "Violence is seldom the answer,
and attempts to attack another person are normally blocked as being unrealistic
or not seriously meant. (I might find a shop assistant annoying, but IF is
not Grand Theft Auto, and responding by killing him is not really one of
my options.) So the Standard Rules simply block attempts to fight people,
but the action exists for rules to make exceptions."

Check an actor attacking (this is the block attacking rule):
	stop the action with library message attacking action number 1 for the noun.

Kissing is an action applying to one thing.
The kissing action translates into I6 as "Kiss".

The specification of the kissing action is "Possibly because Inform was
originally written by an Englishman, attempts at kissing another person are
normally blocked as being unrealistic or not seriously meant. So the
Standard Rules simply block attempts to kiss people, but the action exists
for rules to make exceptions."

Check an actor kissing (this is the kissing yourself rule):
	if the noun is the actor,
		stop the action with library message touching action number 3 for the noun.

Check an actor kissing (this is the block kissing rule):
	stop the action with library message kissing action number 1 for the noun.

Answering it that is an action applying to one thing and one topic.
The answering it that action translates into I6 as "Answer".

The specification of the answering it that action is "The Standard Rules do
not include any systematic way to handle conversation: instead, Inform is
set up so that it is as easy as we can make it to write specific rules
handling speech in particular games, and so that if no such rules are
written then all attempts to communicate are gracefully if not very
interestingly rejected.

The topic here can be any double-quoted text, which can itself contain
tokens in square brackets: see the documentation on Understanding.

Answering is an action existing so that the player can say something free-form
to somebody else. A convention of IF is that a command such as DAPHNE, TAKE
MASK is a request to Daphne to perform an action: if the persuasion rules in
force mean that she consents, the action 'Daphne taking the mask' does
indeed then result. But if the player types DAPHNE, 12375 or DAPHNE, GREAT
HEAVENS - or anything else not making sense as a command - the action
'answering Daphne that ...' will be generated.

The name of the action arises because it is also caused by typing, say,
ANSWER 12375 when Daphne (say) has asked a question."

Report an actor answering something that (this is the block answering rule):
	stop the action with library message answering it that action number 1
		for the noun.

Telling it about is an action applying to one thing and one topic.
The telling it about action translates into I6 as "Tell".

The specification of the telling it about action is "The Standard Rules do
not include any systematic way to handle conversation: instead, Inform is
set up so that it is as easy as we can make it to write specific rules
handling speech in particular games, and so that if no such rules are
written then all attempts to communicate are gracefully if not very
interestingly rejected.

The topic here can be any double-quoted text, which can itself contain
tokens in square brackets: see the documentation on Understanding.

Telling is an action existing only to catch commands like TELL ALEX ABOUT
GUITAR. Customarily in IF, such a command is shorthand which the player
accepts as a conventional form: it means 'tell Alex what I now know about
the guitar' and would make sense if the player had himself recently
discovered something significant about the guitar which might interest
Alex."

Check an actor telling something about (this is the telling yourself rule):
	if the actor is the noun,
		stop the action with library message telling it about action number 1
			for the noun.

Report an actor telling something about (this is the block telling rule):
	stop the action with library message telling it about action number 2
		for the noun.

Asking it about is an action applying to one thing and one topic.
The asking it about action translates into I6 as "Ask".

The specification of the asking it about action is "The Standard Rules do
not include any systematic way to handle conversation: instead, Inform is
set up so that it is as easy as we can make it to write specific rules
handling speech in particular games, and so that if no such rules are
written then all attempts to communicate are gracefully if not very
interestingly rejected.

The topic here can be any double-quoted text, which can itself contain
tokens in square brackets: see the documentation on Understanding.

Asking is an action existing only to catch commands like ASK STEPHEN ABOUT
PENELOPE. Customarily in IF, such a command is shorthand which the player
accepts as a conventional form: it means 'engage Mary in conversation and
try to find out what she might know about'. It's understood as a convention
of the genre that Mary should not be expected to respond in cases where
there is no reason to suppose that she has anything relevant to pass on -
ASK JANE ABOUT RICE PUDDING, for instance, need not conjure up a recipe
even if Jane is a 19th-century servant and therefore almost certainly
knows one."

Report an actor asking something about (this is the block asking rule):
	stop the action with library message asking it about action number 1
		for the noun.

Asking it for is an action applying to two things.
The asking it for action translates into I6 as "AskFor".

The specification of the asking it for action is "The Standard Rules do
not include any systematic way to handle conversation, but this is
action is not quite conversation: it doesn't involve any spoken text as
such. It exists to catch commands like ASK SALLY FOR THE EGG WHISK,
where the whisk is something which Sally has and the player can see.

Slightly oddly, but for historical reasons, an actor asking himself for
something is treated to an inventory listing instead. All other cases
are converted to the giving action: that is, ASK SALLY FOR THE EGG WHISK
is treated as if it were SALLY, GIVE ME THE EGG WHISK - an action for
Sally to perform and which then follows rules for giving.

To ask for information or something intangible, see the asking it about
action."

Check an actor asking something for (this is the asking yourself for something rule):
	if the actor is the noun and the actor is the player,
		try taking inventory instead.

Check an actor asking something for (this is the translate asking for to giving rule):
	convert to request of the noun to perform giving it to action with the
		second noun and the actor.

Section SR4/7 - Standard actions which are checked but then do nothing unless rules intervene

Waiting is an action applying to nothing.
The waiting action translates into I6 as "Wait".

The specification of the waiting action is "The inaction action: where would
we be without waiting? Waiting does not cause time to pass by - that happens
anyway - but represents a positive choice by the actor not to fill that time.
It is an action so that rules can be attached to it: for instance, we could
imagine that a player who consciously decides to sit and wait might notice
something which a busy player does not, and we could write a rule accordingly.

Note the absence of check or carry out rules - anyone can wait, at any time,
and it makes nothing happen."

Report an actor waiting (this is the standard report waiting rule):
	if the actor is the player, stop the action with library message waiting
		action number 1 for the actor;
	issue actor-based library message waiting action number 2.

Touching is an action applying to one thing.
The touching action translates into I6 as "Touch".

The specification of the touching action is "Touching is just that, touching
something without applying pressure: a touch-sensitive screen or a living
creature might react, but a standard push-button or lever will probably not.

In the Standard Rules there are no check touching rules, since touchability
is already a requirement of the noun for the action anyway, and no carry out
rules because nothing in the standard Inform world model reacts to
a mere touch - though report rules do mean that attempts to touch other
people provoke a special reply."

Report an actor touching (this is the report touching yourself rule):
	if the noun is the actor:
		if the actor is the player, issue library message touching action number 3
			for the noun;
		otherwise issue actor-based library message touching action number 4;
		stop the action;
	continue the action.

Report an actor touching (this is the report touching other people rule):
	if the noun is a person:
		if the actor is the player:
			issue library message touching action number 1 for the noun;
		otherwise if the noun is the player:
			issue actor-based library message touching action number 5;
		otherwise:
			issue actor-based library message touching action number 6 for the noun;
		stop the action;
	continue the action.

Report an actor touching (this is the report touching things rule):
	if the actor is the player, issue library message touching action number 2
		for the noun;
	otherwise issue actor-based library message touching action number 6 for the noun.

Waving is an action applying to one thing.
The waving action translates into I6 as "Wave".

The specification of the waving action is "Waving in this sense is like
waving a sceptre: the item to be waved must be directly held (or worn)
by the actor.

In the Standard Rules there are no carry out rules for this action because
nothing in the standard Inform world model which reacts to it. The action
is provided for authors to hang more interesting behaviour onto for special
cases: say, waving a particular rusty iron rod with a star on the end."

Check an actor waving (this is the can't wave what's not held rule):
	if the actor is not the holder of the noun,
		stop the action with library message waving action number 1 for the noun.

Report an actor waving (this is the report waving things rule):
	if the actor is the player, issue library message waving action number 2
		for the noun;
	otherwise issue actor-based library message waving action number 3 for the noun.

Pulling is an action applying to one thing.
The Pulling action translates into I6 as "Pull".

The specification of the pulling action is "Pulling is the act of pulling
something not grossly larger than the actor by an amount which would not
substantially move it.

In the Standard Rules there are no carry out rules for this action because
nothing in the standard Inform world model which reacts to it. The action
is provided for authors to hang more interesting behaviour onto for special
cases: say, pulling a lever. ('The big red lever is a fixed in place device.
Instead of pulling the big red lever, try switching on the lever. Instead
of pushing the big red lever, try switching off the lever.')"

Check an actor pulling (this is the can't pull what's fixed in place rule):
	if the noun is fixed in place,
		stop the action with library message pulling action number 1 for the noun.

Check an actor pulling (this is the can't pull scenery rule):
	if the noun is scenery,
		stop the action with library message pulling action number 2 for the noun.

Check an actor pulling (this is the can't pull people rule):
	if the noun is a person,
		stop the action with library message pulling action number 4 for the noun.

Report an actor pulling (this is the report pulling rule):
	if the actor is the player, issue library message pulling action number 3
		for the noun;
	otherwise issue actor-based library message pulling action number 5 for the noun.

Pushing is an action applying to one thing.
The Pushing action translates into I6 as "Push".

The specification of the pushing action is "Pushing is the act of pushing
something not grossly larger than the actor by an amount which would not
substantially move it. (See also the pushing it to action, which involves
a longer-distance push between rooms.)

In the Standard Rules there are no carry out rules for this action because
nothing in the standard Inform world model which reacts to it. The action
is provided for authors to hang more interesting behaviour onto for special
cases: say, pulling a lever. ('The big red lever is a fixed in place device.
Instead of pulling the big red lever, try switching on the lever. Instead
of pushing the big red lever, try switching off the lever.')"

Check an actor pushing something (this is the can't push what's fixed in place rule):
	if the noun is fixed in place,
		stop the action with library message pushing action number 1 for the noun.

Check an actor pushing something (this is the can't push scenery rule):
	if the noun is scenery,
		stop the action with library message pushing action number 2 for the noun.

Check an actor pushing something (this is the can't push people rule):
	if the noun is a person,
		stop the action with library message pushing action number 4 for the noun.

Report an actor pushing something (this is the report pushing rule):
	if the actor is the player, issue library message pushing action number 3
		for the noun;
	otherwise issue actor-based library message pushing action number 6 for the noun.

Turning is an action applying to one thing.
The Turning action translates into I6 as "Turn".

The specification of the turning action is "Turning is the act of rotating
something - say, a dial.

In the Standard Rules there are no carry out rules for this action because
nothing in the standard Inform world model which reacts to it. The action
is provided for authors to hang more interesting behaviour onto for special
cases: say, turning a capstan."

Check an actor turning (this is the can't turn what's fixed in place rule):
	if the noun is fixed in place,
		stop the action with library message turning action number 1 for the noun.

Check an actor turning (this is the can't turn scenery rule):
	if the noun is scenery,
		stop the action with library message turning action number 2 for the noun.

Check an actor turning (this is the can't turn people rule):
	if the noun is a person,
		stop the action with library message turning action number 4 for the noun.

Report an actor turning (this is the report turning rule):
	if the actor is the player, issue library message turning action number 3
		for the noun;
	otherwise issue actor-based library message turning action number 7 for the noun.

Pushing it to is an action applying to one thing and one visible thing.
The Pushing it to action translates into I6 as "PushDir".

The specification of the pushing it to action is "This action covers pushing
a large object, not being carried, so that the actor pushes it from one room
to another: for instance, pushing a bale of hay to the east.

This is rapidly converted into a special form of the going action. If the
noun object has the either/or property 'pushable between rooms', then the
action is converted to going by the 'standard pushing in directions rule'.
If that going action succeeds, then the original pushing it to action
stops; it's only if that fails that we run on into the 'block pushing in
directions rule', which then puts an end to the matter."

Check an actor pushing something to (this is the can't push unpushable things rule):
	if the noun is not pushable between rooms,
		stop the action with library message pushing it to action number 1 for
			the noun.

Check an actor pushing something to (this is the can't push to non-directions rule):
	if the second noun is not a direction,
		stop the action with library message pushing it to action number 2 for
			the noun.

Check an actor pushing something to (this is the can't push vertically rule):
	if the second noun is up or the second noun is down,
		stop the action with library message pushing it to action number 3 for
			the noun.

Check an actor pushing something to (this is the standard pushing in directions rule):
	convert to special going-with-push action.

Check an actor pushing something to (this is the block pushing in directions rule):
	stop the action with library message pushing it to action number 1 for
		the noun.

Squeezing is an action applying to one thing.
The Squeezing action translates into I6 as "Squeeze".

The specification of the squeezing action is "Squeezing is an action which
can conveniently vary from squeezing something hand-held, like a washing-up
liquid bottle, right up to squeezing a pillar in a bear hug.

In the Standard Rules there are no carry out rules for this action because
nothing in the standard Inform world model which reacts to it. The action
is provided for authors to hang more interesting behaviour onto for special
cases. A mildly fruity message is produced to players who attempt to
squeeze people, which is blocked by a check squeezing rule."

Check an actor squeezing (this is the innuendo about squeezing people rule):
	if the noun is a person,
		stop the action with library message squeezing action number 1 for
			the noun.

Report an actor squeezing (this is the report squeezing rule):
	if the actor is the player, issue library message squeezing action number 2
		for the noun;
	otherwise issue actor-based library message squeezing action number 3 for the noun.

Section SR4/8 - Standard actions which always do nothing unless rules intervene

Saying yes is an action applying to nothing.
The Saying yes action translates into I6 as "Yes".

The specification of the saying yes action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor saying yes (this is the block saying yes rule):
	stop the action with library message saying yes action number 1.

Saying no is an action applying to nothing.
The Saying no action translates into I6 as "No".

The specification of the saying no action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor saying no (this is the block saying no rule):
	stop the action with library message saying no action number 1.

Burning is an action applying to one thing.
The Burning action translates into I6 as "Burn".

The specification of the burning action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor burning (this is the block burning rule):
	stop the action with library message burning action number 1.

Waking up is an action applying to nothing.
The Waking up action translates into I6 as "Wake".

The specification of the waking up action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor waking up (this is the block waking up rule):
	stop the action with library message waking up action number 1.

Thinking is an action applying to nothing.
The Thinking action translates into I6 as "Think".

The specification of the thinking action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor thinking (this is the block thinking rule):
	stop the action with library message thinking action number 1.

Smelling is an action applying to one thing.
The Smelling action translates into I6 as "Smell".

The specification of the smelling action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor smelling (this is the block smelling rule):
	stop the action with library message smelling action number 1 for the noun.

Listening to is an action applying to one thing.
The Listening to action translates into I6 as "Listen".

The specification of the listening to action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor listening (this is the block listening rule):
	stop the action with library message listening to action number 1 for the noun.

Tasting is an action applying to one thing.
The Tasting action translates into I6 as "Taste".

The specification of the tasting action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor tasting (this is the block tasting rule):
	stop the action with library message tasting action number 1 for the noun.

Cutting is an action applying to one thing.
The Cutting action translates into I6 as "Cut".

The specification of the cutting action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor cutting (this is the block cutting rule):
	stop the action with library message cutting action number 1 for the noun.

Jumping is an action applying to nothing.
The Jumping action translates into I6 as "Jump".

The specification of the jumping action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor jumping (this is the block jumping rule):
	stop the action with library message jumping action number 1.

Tying it to is an action applying to two things.
The Tying it to action translates into I6 as "Tie".

The specification of the tying it to action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor tying something to (this is the block tying rule):
	stop the action with library message tying it to action number 1 for the noun.

Drinking is an action applying to one thing.
The Drinking action translates into I6 as "Drink".

The specification of the drinking action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor drinking (this is the block drinking rule):
	stop the action with library message drinking action number 1 for the noun.

Saying sorry is an action applying to nothing.
The Saying sorry action translates into I6 as "Sorry".

The specification of the saying sorry action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor saying sorry (this is the block saying sorry rule):
	stop the action with library message saying sorry action number 1.

Swearing obscenely is an action censored, and applying to nothing.
The Swearing obscenely action translates into I6 as "Strong".

The specification of the swearing obscenely action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor swearing obscenely (this is the block swearing obscenely rule):
	stop the action with library message swearing obscenely action number 1.

Swearing mildly is an action censored, and applying to nothing.
The Swearing mildly action translates into I6 as "Mild".

The specification of the swearing mildly action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor swearing mildly (this is the block swearing mildly rule):
	stop the action with library message swearing mildly action number 1.

Swinging is an action applying to one thing.
The Swinging action translates into I6 as "Swing".

The specification of the swinging action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor swinging (this is the block swinging rule):
	stop the action with library message swinging action number 1 for the noun.

Rubbing is an action applying to one thing.
The Rubbing action translates into I6 as "Rub".

The specification of the rubbing action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor rubbing (this is the block rubbing rule):
	stop the action with library message rubbing action number 1 for the noun.

Setting it to is an action applying to one thing and one topic.
The Setting it to action translates into I6 as "SetTo".

The specification of the setting it to action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor setting something to (this is the block setting it to rule):
	stop the action with library message setting it to action number 1 for the noun.

Waving hands is an action applying to nothing.
The Waving hands action translates into I6 as "WaveHands".

The specification of the waving hands action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor waving hands (this is the block waving hands rule):
	stop the action with library message waving hands action number 1.

Buying is an action applying to one thing.
The Buying action translates into I6 as "Buy".

The specification of the buying action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor buying (this is the block buying rule):
	stop the action with library message buying action number 1 for the noun.

Singing is an action applying to nothing.
The Singing action translates into I6 as "Sing".

The specification of the singing action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor singing (this is the block singing rule):
	stop the action with library message singing action number 1.

Climbing is an action applying to one thing.
The Climbing action translates into I6 as "Climb".

The specification of the climbing action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor climbing (this is the block climbing rule):
	stop the action with library message climbing action number 1 for the noun.

Sleeping is an action applying to nothing.
The Sleeping action translates into I6 as "Sleep".

The specification of the sleeping action is
"The Standard Rules define this action in only a minimal way, blocking it
with a check rule which stops it in all cases. It exists so that before
or instead rules can be written to make it do interesting things in special
cases. (Or to reconstruct the action as something more substantial, unlist
the block rule and supply carry out and report rules, together perhaps
with some further check rules.)"

Check an actor sleeping (this is the block sleeping rule):
	stop the action with library message sleeping action number 1.

Section SR4/9 - Standard actions which happen out of world

Quitting the game is an action out of world and applying to nothing.
The quitting the game action translates into I6 as "Quit".

The quit the game rule is listed in the carry out quitting the game rulebook.
The quit the game rule translates into I6 as "QUIT_THE_GAME_R".

Saving the game is an action out of world and applying to nothing.
The saving the game action translates into I6 as "Save".

The save the game rule is listed in the carry out saving the game rulebook.
The save the game rule translates into I6 as "SAVE_THE_GAME_R".

Restoring the game is an action out of world and applying to nothing.
The restoring the game action translates into I6 as "Restore".

The restore the game rule is listed in the carry out restoring the game rulebook.
The restore the game rule translates into I6 as "RESTORE_THE_GAME_R".

Restarting the game is an action out of world and applying to nothing.
The restarting the game action translates into I6 as "Restart".

The restart the game rule is listed in the carry out restarting the game rulebook.
The restart the game rule translates into I6 as "RESTART_THE_GAME_R".

Verifying the story file is an action out of world applying to nothing.
The verifying the story file action translates into I6 as "Verify".

The verify the story file rule is listed in the carry out verifying the story file rulebook.
The verify the story file rule translates into I6 as "VERIFY_THE_STORY_FILE_R".

Switching the story transcript on is an action out of world and applying to nothing.
The switching the story transcript on action translates into I6 as "ScriptOn".

The switch the story transcript on rule is listed in the carry out switching the story
	transcript on rulebook.
The switch the story transcript on rule translates into I6 as "SWITCH_TRANSCRIPT_ON_R".

Switching the story transcript off is an action out of world and applying to nothing.
The switching the story transcript off action translates into I6 as "ScriptOff".

The switch the story transcript off rule is listed in the carry out switching the story
	transcript off rulebook.
The switch the story transcript off rule translates into I6 as "SWITCH_TRANSCRIPT_OFF_R".

Requesting the story file version is an action out of world and applying to nothing.
The requesting the story file version action translates into I6 as "Version".

The announce the story file version rule is listed in the carry out requesting the story
	file version rulebook.
The announce the story file version rule translates into I6 as "ANNOUNCE_STORY_FILE_VERSION_R".

Requesting the score is an action out of world and applying to nothing.
The requesting the score action translates into I6 as "Score".

The announce the score rule is listed in the carry out requesting the score rulebook.
The announce the score rule translates into I6 as "ANNOUNCE_SCORE_R".

Preferring abbreviated room descriptions is an action out of world and applying to nothing.
The preferring abbreviated room descriptions action translates into I6 as "LMode3".

The prefer abbreviated room descriptions rule is listed in the carry out preferring
	abbreviated room descriptions rulebook.
The prefer abbreviated room descriptions rule translates into I6 as "PREFER_ABBREVIATED_R".

The standard report preferring abbreviated room descriptions rule is listed in the
	report preferring abbreviated room descriptions rulebook.
The standard report preferring abbreviated room descriptions rule translates into
	I6 as "REP_PREFER_ABBREVIATED_R".

Preferring unabbreviated room descriptions is an action out of world and applying to nothing.
The preferring unabbreviated room descriptions action translates into I6 as "LMode2".

The prefer unabbreviated room descriptions rule is listed in the carry out preferring
	unabbreviated room descriptions rulebook.
The prefer unabbreviated room descriptions rule translates into I6 as "PREFER_UNABBREVIATED_R".

The standard report preferring unabbreviated room descriptions rule is listed in the
	report preferring unabbreviated room descriptions rulebook.
The standard report preferring unabbreviated room descriptions rule translates into
	I6 as "REP_PREFER_UNABBREVIATED_R".

Preferring sometimes abbreviated room descriptions is an action out of world and
	applying to nothing.
The preferring sometimes abbreviated room descriptions action translates into I6 as "LMode1".

The prefer sometimes abbreviated room descriptions rule is listed in the carry out
	preferring sometimes abbreviated room descriptions rulebook.
The prefer sometimes abbreviated room descriptions rule translates into I6 as
	"PREFER_SOMETIMES_ABBREVIATED_R".

The standard report preferring sometimes abbreviated room descriptions rule is listed
	in the report preferring sometimes abbreviated room descriptions rulebook.
The standard report preferring sometimes abbreviated room descriptions rule translates
	into I6 as "REP_PREFER_SOMETIMES_ABBR_R".

Switching score notification on is an action out of world and applying to nothing.
The switching score notification on action translates into I6 as "NotifyOn".

The switch score notification on rule is listed in the carry out switching score
	notification on rulebook.
The switch score notification on rule translates into I6 as "SWITCH_SCORE_NOTIFY_ON_R".

The standard report switching score notification on rule is listed in the report
	switching score notification on rulebook.
The standard report switching score notification on rule translates into
	I6 as "REP_SWITCH_NOTIFY_ON_R".

Switching score notification off is an action out of world and applying to nothing.
The switching score notification off action translates into I6 as "NotifyOff".

The switch score notification off rule is listed in the carry out switching score
	notification off rulebook.
The switch score notification off rule translates into I6 as "SWITCH_SCORE_NOTIFY_OFF_R".

The standard report switching score notification off rule is listed in the report
	switching score notification off rulebook.
The standard report switching score notification off rule translates into
	I6 as "REP_SWITCH_NOTIFY_OFF_R".

Requesting the pronoun meanings is an action out of world and applying to nothing.
The requesting the pronoun meanings action translates into I6 as "Pronouns".

The announce the pronoun meanings rule is listed in the carry out requesting the
	pronoun meanings rulebook.
The announce the pronoun meanings rule translates into I6 as "ANNOUNCE_PRONOUN_MEANINGS_R".

The understand token a time period translates into I6 as "RELATIVE_TIME_TOKEN".

Section SR4/10 - Grammar

Understand "take [things]" as taking.
Understand "take off [something]" as taking off.
Understand "take [something] off" as taking off.
Understand "take [things inside] from [something]" as removing it from.
Understand "take [things inside] off [something]" as removing it from.
Understand "take inventory" as taking inventory.
Understand the commands "carry" and "hold" as "take".

Understand "get in/on" as entering.
Understand "get out/off/down/up" as exiting.
Understand "get [things]" as taking.
Understand "get in/into/on/onto [something]" as entering.
Understand "get off/down [something]" as getting off.
Understand "get [things inside] from [something]" as removing it from.

Understand "pick up [things]" or "pick [things] up" as taking.

Understand "stand" or "stand up" as exiting.
Understand "stand on [something]" as entering.

Understand "remove [something preferably held]" as taking off.
Understand "remove [things inside] from [something]" as removing it from.

Understand "shed [something preferably held]" as taking off.
Understand the commands "doff" and "disrobe" as "shed".

Understand "wear [something preferably held]" as wearing.
Understand the command "don" as "wear".

Understand "put [other things] in/inside/into [something]" as inserting it into.
Understand "put [other things] on/onto [something]" as putting it on.
Understand "put on [something preferably held]" as wearing.
Understand "put [something preferably held] on" as wearing.
Understand "put down [things preferably held]" or "put [things preferably held] down" as dropping.

Understand "insert [other things] in/into [something]" as inserting it into.

Understand "drop [things preferably held]" as dropping.
Understand "drop [other things] in/into/down [something]" as inserting it into.
Understand "drop [other things] on/onto [something]" as putting it on.
Understand "drop [something preferably held] at/against [something]" as throwing it at.
Understand the commands "throw" and "discard" as "drop".

Understand "give [something preferably held] to [someone]" as giving it to.
Understand "give [someone] [something preferably held]" as giving it to (with nouns reversed).
[Understand the commands "pay" and "offer" and "feed" as "give".]

Understand "show [someone] [something preferably held]" as showing it to (with nouns reversed).
Understand "show [something preferably held] to [someone]" as showing it to.
[Understand the commands "present" and "display" as "show".]

Understand "go" as going.
Understand "go [direction]" as going.
Understand "go [something]" as entering.
Understand "go into/in/inside/through [something]" as entering.
Understand the commands "walk" and "run" as "go".

Understand "inventory" as taking inventory.
Understand the commands "i" and "inv" as "inventory".

Understand "look" as looking.
Understand "look at [something]" as examining.
Understand "look [something]" as examining.
Understand "look inside/in/into/through [something]" as searching.
Understand "look under [something]" as looking under.
Understand "look up [text] in [something]" as consulting it about (with nouns reversed).
Understand the command "l" as "look".

Understand "consult [something] on/about [text]" as consulting it about.

Understand "open [something]" as opening.
Understand "open [something] with [something preferably held]" as unlocking it with.
Understand the commands "unwrap", "uncover" as "open".

Understand "close [something]" as closing.
Understand "close up [something]" as closing.
Understand "close off [something]" as switching off.
Understand the commands "shut" and "cover" as "close".

Understand "enter" as entering.
Understand "enter [something]" as entering.
Understand the command "cross" as "enter".

Understand "sit on top of [something]" as entering.
Understand "sit on/in/inside [something]" as entering.

Understand "exit" as exiting.
Understand the commands "leave" and "out" as "exit".

Understand "examine [something]" as examining.
Understand the commands "x", "watch", "describe" and "check" as "examine".

Understand "read [something]" as examining.
Understand "read about [text] in [something]" as consulting it about (with nouns reversed).
Understand "read [text] in [something]" as consulting it about (with nouns reversed).

Understand "yes" as saying yes.
Understand the command "y" as "yes".

Understand "no" as saying no.

Understand "sorry" as saying sorry.

Understand "bother" as swearing mildly.
Understand the commands "curses", "drat" and "darn" as "bother".
Understand "shit" as swearing obscenely.
Understand the commands "fuck" and "damn" as "shit".

Understand "search [something]" as searching.

Understand "wave" as waving hands.

Understand "wave [something]" as waving.

Understand "set [something] to [text]" as setting it to.
Understand the command "adjust" as "set".

Understand "pull [something]" as pulling.
Understand the command "drag" as "pull".

Understand "push [something]" as pushing.
Understand "push [something] [direction]" or "push [something] to [direction]" as pushing it to.
Understand the commands "move", "shift", "clear" and "press" as "push".

Understand "turn [something]" as turning.
Understand "turn [something] on" or "turn on [something]" as switching on.
Understand "turn [something] off" or "turn off [something]" as switching off.
Understand the commands "rotate", "twist", "unscrew" and "screw" as "turn".

Understand "switch [something switched on]" as switching off.
Understand "switch [something]" or "switch on [something]" or "switch [something] on" as
	switching on.
Understand "switch [something] off" or "switch off [something]" as switching off.

Understand "lock [something] with [something preferably held]" as locking it with.

Understand "unlock [something] with [something preferably held]" as unlocking it with.

Understand "attack [something]" as attacking.
Understand the commands "break", "smash", "hit", "fight", "torture", "wreck", "crack", "destroy",
	"murder", "kill", "punch" and "thump" as "attack".

Understand "wait" as waiting.
Understand the command "z" as "wait".

Understand "answer [text] to [someone]" as answering it that (with nouns reversed).
Understand the commands "say", "shout" and "speak" as "answer".

Understand "tell [someone] about [text]" as telling it about.

Understand "ask [someone] about [text]" as asking it about.
Understand "ask [someone] for [something]" as asking it for.

Understand "eat [something preferably held]" as eating.

Understand "sleep" as sleeping.
Understand the command "nap" as "sleep".

Understand "sing" as singing.

Understand "climb [something]" or "climb up/over [something]" as climbing.
Understand the command "scale" as "climb".

Understand "buy [something]" as buying.
Understand the command "purchase" as "buy".

Understand "squeeze [something]" as squeezing.
Understand the command "squash" as "squeeze".

Understand "swing [something]" or "swing on [something]" as swinging.

Understand "wake" or "wake up" as waking up.
Understand "wake [someone]" or "wake [someone] up" or "wake up [someone]" as waking.
Understand the commands "awake" and "awaken" as "wake".

Understand "kiss [someone]" as kissing.
Understand the commands "embrace" and "hug" as "kiss".

Understand "think" as thinking.

Understand "smell" as smelling.
Understand "smell [something]" as smelling.
Understand the command "sniff" as "smell".

Understand "listen" as listening.
Understand "hear [something]" as listening.
Understand "listen to [something]" as listening.

Understand "taste [something]" as tasting.

Understand "touch [something]" as touching.
Understand the command "feel" as "touch".

Understand "rub [something]" as rubbing.
Understand the commands "shine", "polish", "sweep", "clean", "dust" and "wipe" as "rub".

Understand "tie [something] to [something]" as tying it to.
Understand the commands "attach" and "fasten" as "tie".

Understand "burn [something]" as burning.
Understand the command "light" as "burn".

Understand "drink [something]" as drinking.
Understand the commands "swallow" and "sip" as "drink".

Understand "cut [something]" as cutting.
Understand the commands "slice", "prune" and "chop" as "cut".

Understand "jump" as jumping.
Understand the commands "skip" and "hop" as "jump".

Understand "score" as requesting the score.
Understand "quit" or "q" as quitting the game.
Understand "save" as saving the game.
Understand "restart" as restarting the game.
Understand "restore" as restoring the game.
Understand "verify" as verifying the story file.
Understand "version" as requesting the story file version.
Understand "script" or "script on" or "transcript" or "transcript on" as switching the story
	transcript on.
Understand "script off" or "transcript off" as switching the story transcript off.
Understand "superbrief" or "short" as preferring abbreviated room descriptions.
Understand "verbose" or "long" as preferring unabbreviated room descriptions.
Understand "brief" or "normal" as preferring sometimes abbreviated room descriptions.
Understand "nouns" or "pronouns" as requesting the pronoun meanings.
Understand "notify" or "notify on" as switching score notification on.
Understand "notify off" as switching score notification off.

Part SR5 - Phrasebook

Section SR5/1/1 - Saying - Values

To say (something - text)
	(documented at ph_say):
	(- print (PrintText) {something}; -).
To say (value - sayable value of kind K)
	(documented at phs_value):
	(- print ({-printing-routine:K}) {-pointer-to:value}; -).

To say (something - number)
	(documented at phs_value):
	(- print (say__n={something}); -).

To say (ch - unicode character) -- running on
	(documented at phs_unicode):
	(- #ifdef TARGET_ZCODE; @push self; self = {ch}; @print_unicode self; @pull self;
	#ifnot; if (unicode_gestalt_ok) glk_put_char_uni({ch}); else print "?"; #endif; -).

To say (something - number) in words
	(documented at phs_numwords):
	(- print (number) say__n=({something}); -).
To say (something - time) in words
	(documented at phs_timewords):
	(- print (PrintTimeOfDayEnglish) {something}; -).
To say s
	(documented at phs_s):
	(- STextSubstitution(); -).

Section SR5/1/2 - Saying - Names with articles

To say a (something - object)
	(documented at phs_a):
	(- print (a) {something}; -).
To say an (something - object)
	(documented at phs_a):
	(- print (a) {something}; -).
To say A (something - object)
	(documented at phs_A):
	(- CIndefArt({something}); -).
To say An (something - object)
	(documented at phs_A):
	(- CIndefArt({something}); -).
To say the (something - object)
	(documented at phs_the):
	(- print (the) {something}; -).
To say The (something - object)
	(documented at phs_The):
	(- print (The) {something}; -).

Section SR5/1/3 - Saying - Say if and otherwise

To say if (c - condition)
	(documented at phs_if): (- {-erase}
	if (~~({c})) jump {-next-label:Say};
		-).
To say unless (c - condition)
	(documented at phs_unless): (- {-erase}
	if ({c}) jump {-next-label:Say};
		-).
To say otherwise/else if (c - condition)
	(documented at phs_elseif): (- {-erase}
	jump {-next-label:SayX}; .{-label:Say}; if (~~({c})) jump {-next-label:Say};
		-).
To say otherwise/else unless (c - condition)
	(documented at phs_elseunless): (- {-erase}
	jump {-next-label:SayX}; .{-label:Say}; if ({c}) jump {-next-label:Say};
		-).
To say otherwise
	(documented at phs_otherwise): (- {-erase}
	jump {-next-label:SayX}; .{-label:Say};
		-).
To say else
	(documented at phs_otherwise): (- {-erase}
	jump {-next-label:SayX}; .{-label:Say};
		-).
To say end if
	(documented at phs_endif): (- {-erase}
	.{-label:Say}; .{-label:SayX};
		-).
To say end unless
	(documented at phs_endunless): (- {-erase}
	.{-label:Say}; .{-label:SayX};
		-).

Section SR5/1/4 - Saying - Say one of

To say one of -- beginning say_one_of (documented at phs_oneof):
	(- {-allocate-storage:say_one_of}I7_ST_say_one_of-->{-counter:say_one_of} =
	{-final-segment-marker}(I7_ST_say_one_of-->{-counter:say_one_of}, {-segment-count});
	switch((I7_ST_say_one_of-->{-advance-counter:say_one_of})%({-segment-count}+1)-1) {-open-brace}
		0: -).
To say or -- continuing say_one_of (documented at phs_or):
	(- @nop; {-segment-count}: -).
To say at random -- ending say_one_of with marker I7_SOO_RAN (documented at phs_random):
	(- {-close-brace} -).
To say purely at random -- ending say_one_of with marker I7_SOO_PAR (documented at phs_purelyrandom):
	(- {-close-brace} -).
To say then at random -- ending say_one_of with marker I7_SOO_TRAN (documented at phs_thenrandom):
	(- {-close-brace} -).
To say then purely at random -- ending say_one_of with marker I7_SOO_TPAR (documented at phs_thenpurelyrandom):
	(- {-close-brace} -).
To say sticky random -- ending say_one_of with marker I7_SOO_STI (documented at phs_sticky):
	(- {-close-brace} -).
To say as decreasingly likely outcomes -- ending say_one_of with marker I7_SOO_TAP (documented at phs_decreasing):
	(- {-close-brace} -).
To say in random order -- ending say_one_of with marker I7_SOO_SHU (documented at phs_order):
	(- {-close-brace} -).
To say cycling -- ending say_one_of with marker I7_SOO_CYC (documented at phs_cycling):
	(- {-close-brace} -).
To say stopping -- ending say_one_of with marker I7_SOO_STOP (documented at phs_stopping):
	(- {-close-brace} -).

To say first time -- beginning say_first_time (documented at phs_firsttime):
	(- {-allocate-storage:say_first_time}
	if ((I7_ST_say_first_time-->{-advance-counter:say_first_time})++ == 0) {-open-brace}
		-).
To say only -- ending say_first_time (documented at phs_firsttime):
	(- {-close-brace} -).

Section SR5/1/5 - Saying - Paragraph control

To say line break -- running on
	(documented at phs_linebreak):
	(- new_line; -).
To say no line break -- running on
	(documented at phs_nolinebreak): do nothing.
To say conditional paragraph break -- running on
	(documented at phs_condparabreak):
	(- DivideParagraphPoint(); -).
To say command clarification break -- running on
	(documented at phs_clarifbreak):
	(- CommandClarificationBreak(); -).
To say paragraph break -- running on
	(documented at phs_parabreak):
	(- DivideParagraphPoint(); new_line; -).
To say run paragraph on -- running on
	(documented at phs_runparaon):
	(- RunParagraphOn(); -).
To say run paragraph on with special look spacing -- running on
	(documented at phs_runparaonsls):
	(- SpecialLookSpacingBreak(); -).
To decide if a paragraph break is pending
	(documented at ph_breakpending):
	(- (say__p) -).

Section SR5/1/6 - Saying - Special characters

To say bracket -- running on
	(documented at phs_bracket):
	(- print "["; -).
To say close bracket -- running on
	(documented at phs_closebracket):
	(- print "]"; -).
To say apostrophe/' -- running on
	(documented at phs_apostrophe):
	(- print "'"; -).
To say quotation mark -- running on
	(documented at phs_quotemark):
	(- print "~"; -).

Section SR5/1/7 - Saying - Fonts and visual effects

To say bold type -- running on
	(documented at phs_bold):
	(- style bold; -).
To say italic type -- running on
	(documented at phs_italic):
	(- style underline; -).
To say roman type -- running on
	(documented at phs_roman):
	(- style roman; -).
To say fixed letter spacing -- running on
	(documented at phs_fixedspacing):
	(- font off; -).
To say variable letter spacing -- running on
	(documented at phs_varspacing):
	(- font on; -).
To display the boxed quotation (Q - text)
	(documented at ph_boxed):
	(- DisplayBoxedQuotation({-box-quotation-text:Q}); -).

Section SR5/1/8 - Saying - Some built-in texts

To say the/-- banner text
	(documented at phs_banner):
	(- Banner(); -).
To say the/-- list of extension credits
	(documented at phs_extcredits):
	(- ShowExtensionVersions(); -).
To say the/-- complete list of extension credits
	(documented at phs_compextcredits):
	(- ShowFullExtensionVersions(); -).
To say the/-- player's surroundings
	(documented at phs_surroundings):
	(- SL_Location(); -).

Section SR5/1/9 - Saying - Saying lists of things

To list the contents of (O - an object),
	with newlines,
	indented,
	giving inventory information,
	as a sentence,
	including contents,
	including all contents,
	tersely,
	giving brief inventory information,
	using the definite article,
	listing marked items only,
	prefacing with is/are,
	not listing concealed items,
	suppressing all articles
	and/or with extra indentation
	(documented at ph_listcontents):
	(- WriteListFrom(child({O}), {phrase options}); -).

To say contents of (O - an object)
	(deprecated)
	(documented at phs_contents_dep):
	list the contents of O, as a sentence.

To say the contents of (O - an object)
	(deprecated)
	(documented at phs_contents_dep):
	list the contents of O, as a sentence, using the definite article.

To say a list of (OS - description of objects)
	(documented at phs_alistof):
	(- @push subst__v;
		objectloop (subst__v ofclass Object) if ({-bind-variable:OS})
		give subst__v workflag2; else give subst__v ~workflag2;
		WriteListOfMarkedObjects(ENGLISH_BIT);
		@pull subst__v; -).
To say A list of (OS - description of objects)
	(documented at phs_Alistof):
	(- @push subst__v;
		objectloop (subst__v ofclass Object) if ({-bind-variable:OS})
		give subst__v workflag2; else give subst__v ~workflag2;
		WriteListOfMarkedObjects(ENGLISH_BIT+CFIRSTART_BIT);
		@pull subst__v; -).
To say list of (OS - description of objects)
	(documented at phs_listof):
	(- @push subst__v;
		objectloop (subst__v ofclass Object) if ({-bind-variable:OS})
		give subst__v workflag2; else give subst__v ~workflag2;
		WriteListOfMarkedObjects(ENGLISH_BIT+NOARTICLE_BIT);
		@pull subst__v; -).
To say the list of (OS - description of objects)
	(documented at phs_thelistof):
	(- @push subst__v;
		objectloop (subst__v ofclass Object) if ({-bind-variable:OS})
		give subst__v workflag2; else give subst__v ~workflag2;
		WriteListOfMarkedObjects(ENGLISH_BIT+DEFART_BIT);
		@pull subst__v; -).
To say The list of (OS - description of objects)
	(documented at phs_Thelistof):
	(- @push subst__v;
		objectloop (subst__v ofclass Object) if ({-bind-variable:OS})
		give subst__v workflag2; else give subst__v ~workflag2;
		WriteListOfMarkedObjects(ENGLISH_BIT+DEFART_BIT+CFIRSTART_BIT);
		@pull subst__v; -).
To say is-are a list of (OS - description of objects)
	(documented at phs_isalistof):
	(- @push subst__v;
		objectloop (subst__v ofclass Object) if ({-bind-variable:OS})
		give subst__v workflag2; else give subst__v ~workflag2;
		WriteListOfMarkedObjects(ENGLISH_BIT+ISARE_BIT);
		@pull subst__v; -).
To say is-are list of (OS - description of objects)
	(documented at phs_islistof):
	(- @push subst__v;
		objectloop (subst__v ofclass Object) if ({-bind-variable:OS})
		give subst__v workflag2; else give subst__v ~workflag2;
		WriteListOfMarkedObjects(ENGLISH_BIT+ISARE_BIT+NOARTICLE_BIT);
		@pull subst__v; -).
To say is-are the list of (OS - description of objects)
	(documented at phs_isthelistof):
	(- @push subst__v;
		objectloop (subst__v ofclass Object) if ({-bind-variable:OS})
		give subst__v workflag2; else give subst__v ~workflag2;
		WriteListOfMarkedObjects(ENGLISH_BIT+DEFART_BIT+ISARE_BIT);
		@pull subst__v; -).
To say a list of (OS - description of objects) including contents
	(documented at phs_alistofconts):
	(- @push subst__v;
		objectloop (subst__v ofclass Object) if ({-bind-variable:OS})
		give subst__v workflag2; else give subst__v ~workflag2;
		WriteListOfMarkedObjects(ENGLISH_BIT+RECURSE_BIT+PARTINV_BIT+
			TERSE_BIT+CONCEAL_BIT);
		@pull subst__v; -).

Section SR5/1/10 - Saying - Group in and omit from lists

To group (OS - description of objects) together
	(documented at ph_group):
	(- @push subst__v;
		objectloop (subst__v provides list_together) if ({-bind-variable:OS})
		subst__v.list_together = {-list-together};
		@pull subst__v; -).
To group (OS - description of objects) together giving articles
	(documented at ph_groupart):
	(- @push subst__v;
		objectloop (subst__v provides list_together) if ({-bind-variable:OS})
		subst__v.list_together = {-articled-list-together};
		@pull subst__v; -).
To group (OS - description of objects) together as (T - text)
	(documented at ph_grouptext):
	(- @push subst__v;
		objectloop (subst__v provides list_together) if ({-bind-variable:OS})
		subst__v.list_together = {T};
		@pull subst__v; -).
To omit contents in listing
	(documented at ph_omit):
	(- c_style = c_style &~ (RECURSE_BIT+FULLINV_BIT+PARTINV_BIT); -).

Section SR5/1/11 - Saying - Lists of values

To say (L - a list of values) in brace notation
	(documented at phs_listbraced):
	(- LIST_OF_TY_Say({-pointer-to:L}, 1); -).
To say (L - a list of objects) with definite articles
	(documented at phs_listdef):
	(- LIST_OF_TY_Say({-pointer-to:L}, 2); -).
To say (L - a list of objects) with indefinite articles
	(documented at phs_listindef):
	(- LIST_OF_TY_Say({-pointer-to:L}, 3); -).

Section SR5/1/12 - Saying - Filtering contents - Unindexed

To filter list recursion to (D - description of objects):
	(- list_filter_routine = {D}; -).
To unfilter list recursion:
	(- list_filter_routine = 0; -).

Section SR5/2/1 - Values - Making conditions true

To now (cn - now-condition)
	(documented at ph_now):
	(- {cn} -).

Section SR5/2/2 - Values - Giving values temporary names

To let (t - nonexisting variable) be (u - value)
	(assignment operation)
	(documented at ph_let):
	(- {-creationassignment}; -).
To let (t - nonexisting variable) be (u - name of kind of value)
	(assignment operation)
	(documented at ph_letdefault):
	(- {-creationdefault}; -).
To let (t - nonexisting variable) be (u - description of relations)
	(assignment operation)
	(documented at ph_letrelation):
	(- {-pointer-to:t} = {-allocate-storage-for:u}; {-adapt-relation}; -).
To let (t - nonexisting variable) be given by (Q - equation name)
	(documented at ph_letequation):
	(- {-solve-equation}; -).

To let (t - existing variable) be (u - value)
	(assignment operation)
	(documented at ph_let):
	(- {-assignment}; -).
To let (t - existing variable) be given by (Q - equation name)
	(documented at ph_letequation):
	(- {-solve-equation}; -).

Section SR5/2/3 - Values - Changing stored values

To change (S - storage) to (w - value)
	(deprecated)
	(assignment operation)
	(documented at ph_change_dep):
	(- {-assignment}; -).
To change (o - object) to (p - property)
	(deprecated)
	(assignment operation)
	(documented at ph_change_dep):
	(- SetEitherOrProperty({o}, {p}, false, {-adjective-definition:p}); -).
To change (o - object) to (w - enumerated value)
	(deprecated)
	(assignment operation)
	(documented at ph_change_dep):
	(- WriteGProperty(OBJECT_TY,{o},{-convert-adjectival-constants:w},{w}); -).

To increase (S - storage) by (w - value)
	(assignment operation)
	(documented at ph_increase):
	(- {-increase}; -).
To decrease (S - storage) by (w - value)
	(assignment operation)
	(documented at ph_decrease):
	(- {-decrease}; -).
To increment (S - storage)
	(documented at ph_increment):
	(- {-increment}; -).
To decrement (S - storage)
	(documented at ph_decrement):
	(- {-decrement}; -).

Section SR5/2/4 - Values - Arithmetic

To decide which arithmetic value is (X - arithmetic value) + (Y - arithmetic value)
	(arithmetic operation 0)
	(documented at ph_plus): (- ({X}+{Y}) -).
To decide which arithmetic value is (X - arithmetic value) plus (Y - arithmetic value)
	(arithmetic operation 0)
	(documented at ph_plus):
	(- ({X}+{Y}) -).
To decide which arithmetic value is (X - arithmetic value) - (Y - arithmetic value)
	(arithmetic operation 1)
	(documented at ph_minus):
	(- ({X}-{Y}) -).
To decide which arithmetic value is (X - arithmetic value) minus (Y - arithmetic value)
	(arithmetic operation 1)
	(documented at ph_minus):
	(- ({X}-{Y}) -).
To decide which arithmetic value is (X - arithmetic value) * (Y - arithmetic value)
	(arithmetic operation 2)
	(documented at ph_times):
	(- ({X}*{Y}{-rescale-times}) -).
To decide which arithmetic value is (X - arithmetic value) times (Y - arithmetic value)
	(arithmetic operation 2)
	(documented at ph_times):
	(- ({X}*{Y}{-rescale-times}) -).
To decide which arithmetic value is (X - arithmetic value) multiplied by (Y - arithmetic value)
	(arithmetic operation 2)
	(documented at ph_times):
	(- ({X}*{Y}{-rescale-times}) -).
To decide which arithmetic value is (X - arithmetic value) / (Y - arithmetic value)
	(arithmetic operation 3)
	(documented at ph_divide):
	(- (IntegerDivide({X}{-rescale-divide},{Y})) -).
To decide which arithmetic value is (X - arithmetic value) divided by (Y - arithmetic value)
	(arithmetic operation 3)
	(documented at ph_divide):
	(- (IntegerDivide({X}{-rescale-divide},{Y})) -).
To decide which arithmetic value is remainder after dividing (X - arithmetic value)
	by (Y - arithmetic value)
	(arithmetic operation 4)
	(documented at ph_remainder):
	(- (IntegerRemainder({X},{Y})) -).
To decide which arithmetic value is (X - arithmetic value) to the nearest (Y - arithmetic value)
	(arithmetic operation 5)
	(documented at ph_nearest):
	(- (RoundOffTime({X},{Y})) -).
To decide which arithmetic value is the square root of (X - arithmetic value)
	(arithmetic operation 6)
	(documented at ph_squareroot):
	(- (SquareRoot({X}{-rescale-root})) -).
To decide which arithmetic value is the cube root of (X - arithmetic value)
	(arithmetic operation 7)
	(documented at ph_cuberoot):
	(- (CubeRoot({X}{-rescale-cuberoot})) -).
To decide which arithmetic value is total (p - arithmetic value valued property)
	of (S - description of values)
	(arithmetic operation 11)
	(documented at ph_total):
	(- {-total-of:S} -).

Section SR5/2/5 - Values - Enumerations

To decide which number is number of (S - description of values)
	(documented at ph_numberof):
	(- {-number-of:S} -).
To decide which K is (name of kind of enumerated value K) after (X - K)
	(documented at ph_enumafter):
	(- A_{-printing-routine:K}({X}) -).
To decide which K is (name of kind of enumerated value K) before (X - K)
	(documented at ph_enumbefore):
	(- B_{-printing-routine:K}({X}) -).
To decide which K is the first value of (name of kind of enumerated value K)
	(documented at ph_enumfirst):
	decide on the default value of K.
To decide which K is the last value of (name of kind of enumerated value K)
	(documented at ph_enumlast):
	decide on K before the default value of K.

Section SR5/2/6 - Values - Truth states

To decide what truth state is whether or not (C - condition)
	(documented at ph_whether):
	(- ({C}) -).

Section SR5/2/7 - Values - Randomness

To decide which K is a/-- random (S - description of values of kind K)
	(documented at ph_randomdesc):
	(- {-random-of:S} -).
To decide which K is a random (name of kind of arithmetic value K) between (first value - K) and (second value - K)
	(documented at ph_randombetween):
	(- R_{-printing-routine:K}({first value}, {second value}) -).
To decide which K is a random (name of kind of arithmetic value K) from (first value - K) to (second value - K)
	(documented at ph_randombetween):
	(- R_{-printing-routine:K}({first value}, {second value}) -).
To decide which K is a random (name of kind of enumerated value K) between (first value - K) and (second value - K)
	(documented at ph_randombetween):
	(- R_{-printing-routine:K}({first value}, {second value}) -).
To decide which K is a random (name of kind of enumerated value K) from (first value - K) to (second value - K)
	(documented at ph_randombetween):
	(- R_{-printing-routine:K}({first value}, {second value}) -).
To decide whether a random chance of (N - number) in (M - number) succeeds
	(documented at ph_randomchance):
	(- (GenerateRandomNumber(1, {M}) <= {N}) -).
To seed the random-number generator with (N - number)
	(documented at ph_seed):
	(- VM_Seed_RNG({N}); -).

Section SR5/2/8 - Values - Tables

To choose a/the/-- row (N - number) in/from (T - table name)
	(documented at ph_chooserow):
	(- {-require-ctvs}ct_0 = {T}; ct_1 = {N}; -).
To choose a/the/-- row with (TC - K valued table column) of (w - value of kind K)
	in/from (T - table name)
	(documented at ph_chooserowwith):
	(- {-require-ctvs}ct_0 = {T}; ct_1 = TableRowCorr(ct_0, {TC}, {w}); -).
To choose a/the/-- blank row in/from (T - table name)
	(documented at ph_chooseblankrow):
	(- {-require-ctvs}ct_0 = {T}; ct_1 = TableBlankRow(ct_0); -).
To choose a/the/-- random row in/from (T - table name)
	(documented at ph_chooserandomrow):
	(- {-require-ctvs}ct_0 = {T}; ct_1 = TableRandomRow(ct_0); -).
To decide which number is number of rows in/from (T - table name)
	(documented at ph_numrows):
	(- TableRows({T}) -).
To decide which number is number of blank rows in/from (T - table name)
	(documented at ph_numblank):
	(- TableBlankRows({T}) -).
To decide which number is number of filled rows in/from (T - table name)
	(documented at ph_numfilled):
	(- TableFilledRows({T}) -).
To decide if there is (TR - table-reference)
	(documented at ph_thereis):
	(- (Exists{-do-not-dereference:TR}) -).
To decide if there is no (TR - table-reference)
	(documented at ph_thereisno):
	(- (Exists{-do-not-dereference:TR} == false) -).
To blank out (tr - table-reference)
	(documented at ph_blankout):
	(- {tr}{-backspace},4); -).
To blank out the whole row
	(documented at ph_blankoutrow):
	(- {-require-ctvs}TableBlankOutRow(ct_0, ct_1); -).
To blank out the whole (TC - table column) in/from (T - table name)
	(documented at ph_blankoutcol):
	(- TableBlankOutColumn({T}, {TC}); -).
To blank out the whole of (T - table name)
	(documented at ph_blankouttable):
	(- TableBlankOutAll({T}); -).
To delete (tr - table-reference)
	(deprecated)
	(documented at ph_deleteentry_dep):
	(- {tr}{-backspace},4); -).

Section SR5/2/9 - Values - Sorting tables

To sort (T - table name) in random order
	(documented at ph_sortrandom):
	(- TableShuffle({T}); -).
To sort (T - table name) in (TC - table column) order
	(documented at ph_sortcolumn):
	(- TableSort({T}, {TC}, 1); -).
To sort (T - table name) in reverse (TC - table column) order
	(documented at ph_sortcolumnreverse):
	(- TableSort({T}, {TC}, -1); -).

Section SR5/2/10 - Values - Indexed text

To decide what number is the number of characters in (txb - indexed text)
	(documented at ph_numchars):
	(- IT_BlobAccess({-pointer-to:txb}, CHR_BLOB) -).
To decide what number is the number of words in (txb - indexed text)
	(documented at ph_numwords):
	(- IT_BlobAccess({-pointer-to:txb}, WORD_BLOB) -).
To decide what number is the number of punctuated words in (txb - indexed text)
	(documented at ph_numpwords):
	(- IT_BlobAccess({-pointer-to:txb}, PWORD_BLOB) -).
To decide what number is the number of unpunctuated words in (txb - indexed text)
	(documented at ph_numupwords):
	(- IT_BlobAccess({-pointer-to:txb}, UWORD_BLOB) -).
To decide what number is the number of lines in (txb - indexed text)
	(documented at ph_numlines):
	(- IT_BlobAccess({-pointer-to:txb}, LINE_BLOB) -).
To decide what number is the number of paragraphs in (txb - indexed text)
	(documented at ph_numparas):
	(- IT_BlobAccess({-pointer-to:txb}, PARA_BLOB) -).

To decide what indexed text is character number (N - a number) in (txb - indexed text)
	(documented at ph_charnum):
	(- IT_GetBlob({-pointer-to-new:indexed text}, {-pointer-to:txb}, {N}, CHR_BLOB) -).
To decide what indexed text is word number (N - a number) in (txb - indexed text)
	(documented at ph_wordnum):
	(- IT_GetBlob({-pointer-to-new:indexed text}, {-pointer-to:txb}, {N}, WORD_BLOB) -).
To decide what indexed text is punctuated word number (N - a number) in (txb - indexed text)
	(documented at ph_pwordnum):
	(- IT_GetBlob({-pointer-to-new:indexed text}, {-pointer-to:txb}, {N}, PWORD_BLOB) -).
To decide what indexed text is unpunctuated word number (N - a number) in (txb - indexed text)
	(documented at ph_upwordnum):
	(- IT_GetBlob({-pointer-to-new:indexed text}, {-pointer-to:txb}, {N}, UWORD_BLOB) -).
To decide what indexed text is line number (N - a number) in (txb - indexed text)
	(documented at ph_linenum):
	(- IT_GetBlob({-pointer-to-new:indexed text}, {-pointer-to:txb}, {N}, LINE_BLOB) -).
To decide what indexed text is paragraph number (N - a number) in (txb - indexed text)
	(documented at ph_paranum):
	(- IT_GetBlob({-pointer-to-new:indexed text}, {-pointer-to:txb}, {N}, PARA_BLOB) -).

Section SR5/2/11 - Values - Matching text

To decide if (txb - indexed text) exactly matches the text (ftxb - indexed text),
	case insensitively
	(documented at ph_exactlymatches):
	(- IT_Replace_RE(CHR_BLOB,{-pointer-to:txb},{-pointer-to:ftxb},0,{phrase options},1) -).
To decide if (txb - indexed text) matches the text (ftxb - indexed text),
	case insensitively
	(documented at ph_matches):
	(- IT_Replace_RE(CHR_BLOB,{-pointer-to:txb},{-pointer-to:ftxb},0,{phrase options}) -).
To decide what number is number of times (txb - indexed text) matches the text
	(ftxb - indexed text), case insensitively
	(documented at ph_nummatches):
	(- IT_Replace_RE(CHR_BLOB,{-pointer-to:txb},{-pointer-to:ftxb},1,{phrase options}) -).

To decide if (txb - indexed text) exactly matches the regular expression (ftxb - indexed text),
	case insensitively
	(documented at ph_exactlymatchesre):
	(- IT_Replace_RE(REGEXP_BLOB,{-pointer-to:txb},{-pointer-to:ftxb},0,{phrase options},1) -).
To decide if (txb - indexed text) matches the regular expression (ftxb - indexed text),
	case insensitively
	(documented at ph_matchesre):
	(- IT_Replace_RE(REGEXP_BLOB,{-pointer-to:txb},{-pointer-to:ftxb},0,{phrase options}) -).
To decide what indexed text is text matching regular expression
	(documented at ph_matchtext):
	(- IT_RE_GetMatchVar({-pointer-to-new:indexed text}, 0) -).
To decide what indexed text is text matching subexpression (N - a number)
	(documented at ph_subexpressiontext):
	(- IT_RE_GetMatchVar({-pointer-to-new:indexed text}, {N}) -).
To decide what number is number of times (txb - indexed text) matches the regular expression
	(ftxb - indexed text),case insensitively
	(documented at ph_nummatchesre):
	(- IT_Replace_RE(REGEXP_BLOB,{-pointer-to:txb},{-pointer-to:ftxb},1,{phrase options}) -).

Section SR5/2/12 - Values - Replacing text

To replace the text (ftxb - indexed text) in (txb - indexed text) with (rtxb - indexed text),
	case insensitively
	(documented at ph_replace):
	(- IT_Replace_RE(CHR_BLOB, {-pointer-to:txb}, {-pointer-to:ftxb},
		{-pointer-to:rtxb}, {phrase options}); -).
To replace the regular expression (ftxb - indexed text) in (txb - indexed text) with
	(rtxb - indexed text), case insensitively
	(documented at ph_replacere):
	(- IT_Replace_RE(REGEXP_BLOB, {-pointer-to:txb}, {-pointer-to:ftxb},
		{-pointer-to:rtxb}, {phrase options}); -).
To replace the word (ftxb - indexed text) in (txb - indexed text) with
	(rtxb - indexed text)
	(documented at ph_replacewordin):
	(- IT_ReplaceText(WORD_BLOB, {-pointer-to:txb}, {-pointer-to:ftxb}, {-pointer-to:rtxb}); -).
To replace the punctuated word (ftxb - indexed text) in (txb - indexed text)
	with (rtxb - indexed text)
	(documented at ph_replacepwordin):
	(- IT_ReplaceText(PWORD_BLOB, {-pointer-to:txb}, {-pointer-to:ftxb}, {-pointer-to:rtxb}); -).

To replace character number (N - a number) in (txb - indexed text)
	with (rtxb - indexed text)
	(documented at ph_replacechar):
	(- IT_ReplaceBlob(CHR_BLOB, {-pointer-to:txb}, {N}, {-pointer-to:rtxb}); -).
To replace word number (N - a number) in (txb - indexed text)
	with (rtxb - indexed text)
	(documented at ph_replaceword):
	(- IT_ReplaceBlob(WORD_BLOB, {-pointer-to:txb}, {N}, {-pointer-to:rtxb}); -).
To replace punctuated word number (N - a number) in (txb - indexed text)
	with (rtxb - indexed text)
	(documented at ph_replacepword):
	(- IT_ReplaceBlob(PWORD_BLOB, {-pointer-to:txb}, {N}, {-pointer-to:rtxb}); -).
To replace unpunctuated word number (N - a number) in (txb - indexed text)
	with (rtxb - indexed text)
	(documented at ph_replaceupword):
	(- IT_ReplaceBlob(UWORD_BLOB, {-pointer-to:txb}, {N}, {-pointer-to:rtxb}); -).
To replace line number (N - a number) in (txb - indexed text) with (rtxb - indexed text)
	(documented at ph_replaceline):
	(- IT_ReplaceBlob(LINE_BLOB, {-pointer-to:txb}, {N}, {-pointer-to:rtxb}); -).
To replace paragraph number (N - a number) in (txb - indexed text) with (rtxb - indexed text)
	(documented at ph_replacepara):
	(- IT_ReplaceBlob(PARA_BLOB, {-pointer-to:txb}, {N}, {-pointer-to:rtxb}); -).

Section SR5/2/13 - Values - Casing of text

To decide what indexed text is (txb - indexed text) in lower case
	(documented at ph_lowercase):
	(- IT_CharactersToCase({-pointer-to-new:indexed text}, {-pointer-to:txb}, 0) -).
To decide what indexed text is (txb - indexed text) in upper case
	(documented at ph_uppercase):
	(- IT_CharactersToCase({-pointer-to-new:indexed text}, {-pointer-to:txb}, 1) -).
To decide what indexed text is (txb - indexed text) in title case
	(documented at ph_titlecase):
	(- IT_CharactersToCase({-pointer-to-new:indexed text}, {-pointer-to:txb}, 2) -).
To decide what indexed text is (txb - indexed text) in sentence case
	(documented at ph_sentencecase):
	(- IT_CharactersToCase({-pointer-to-new:indexed text}, {-pointer-to:txb}, 3) -).
To decide if (txb - indexed text) is in lower case
	(documented at ph_inlower):
	(- IT_CharactersOfCase({-pointer-to:txb}, 0) -).
To decide if (txb - indexed text) is in upper case
	(documented at ph_inupper):
	(- IT_CharactersOfCase({-pointer-to:txb}, 1) -).

Section SR5/2/14 - Values - Lists

To add (new entry - K) to (L - list of values of kind K), if absent
	(documented at ph_addtolist):
	(- LIST_OF_TY_InsertItem({-pointer-to:L}, {new entry}, 0, 0, {phrase options}); -).

To add (new entry - K) at entry (E - number) in (L - list of values of kind K), if absent
	(documented at ph_addatentry):
	(- LIST_OF_TY_InsertItem({-pointer-to:L}, {new entry}, 1, {E}, {phrase options}); -).

To add (LX - list of Ks) to (L - list of values of kind K), if absent
	(documented at ph_addlisttolist):
	(- LIST_OF_TY_AppendList({-pointer-to:L}, {-pointer-to:LX}, 0, 0, {phrase options}); -).

To add (LX - list of Ks) at entry (E - number) in (L - list of values of kind K)
	(documented at ph_addlistatentry):
	(- LIST_OF_TY_AppendList({-pointer-to:L}, {-pointer-to:LX}, 1, {E}, 0); -).

To remove (existing entry - K) from (L - list of values of kind K), if present
	(documented at ph_remfromlist):
	(- LIST_OF_TY_RemoveValue({-pointer-to:L}, {existing entry}, {phrase options}); -).

To remove (N - list of Ks) from (L - list of values of kind K), if present
	(documented at ph_remlistfromlist):
	(- LIST_OF_TY_Remove_List({-pointer-to:L}, {-pointer-to:N}, {phrase options}); -).

To remove entry (N - number) from (L - list of values), if present
	(documented at ph_rementry):
	(- LIST_OF_TY_RemoveItemRange({-pointer-to:L}, {N}, {N}, {phrase options}); -).

To remove entries (N - number) to (N2 - number) from (L - list of values), if present
	(documented at ph_rementries):
	(- LIST_OF_TY_RemoveItemRange({-pointer-to:L}, {N}, {N2}, {phrase options}); -).

To decide if (N - K) is listed in (L - list of values of kind K)
	(documented at ph_islistedin):
	(- (LIST_OF_TY_FindItem({-pointer-to:L}, {N})) -).

To decide if (N - K) is not listed in (L - list of values of kind K)
	(documented at ph_isnotlistedin):
	(- (LIST_OF_TY_FindItem({-pointer-to:L}, {N}) == false) -).

To decide what list of Ks is the list of (D - description of values of kind K)
	(documented at ph_listofdesc):
	(- LIST_OF_TY_Desc({-pointer-to-new:list of K}, {D}, {-strong-kind:K}) -).
To decide what list of objects is the multiple object list
	(documented at ph_multipleobjectlist):
	(- LIST_OF_TY_Mol({-pointer-to-new:list of objects}) -).
To alter the multiple object list to (L - list of objects)
	(documented at ph_altermultipleobjectlist):
	(- LIST_OF_TY_Set_Mol({-pointer-to:L}); -).

Section SR5/2/15 - Values - Length of lists

To decide what number is the number of entries in/of (L - a list of values)
	(documented at ph_numberentries):
	(- LIST_OF_TY_GetLength({-pointer-to:L}) -).
To truncate (L - a list of values) to (N - a number) entries/entry
	(documented at ph_truncate):
	(- LIST_OF_TY_SetLength({-pointer-to:L}, {N}, -1, 1); -).
To truncate (L - a list of values) to the first (N - a number) entries/entry
	(documented at ph_truncatefirst):
	(- LIST_OF_TY_SetLength({-pointer-to:L}, {N}, -1, 1); -).
To truncate (L - a list of values) to the last (N - a number) entries/entry
	(documented at ph_truncatelast):
	(- LIST_OF_TY_SetLength({-pointer-to:L}, {N}, -1, -1); -).
To extend (L - a list of values) to (N - a number) entries/entry
	(documented at ph_extend):
	(- LIST_OF_TY_SetLength({-pointer-to:L}, {N}, 1); -).
To change (L - a list of values) to have (N - a number) entries/entry
	(documented at ph_changelength):
	(- LIST_OF_TY_SetLength({-pointer-to:L}, {N}, 0); -).

Section SR5/2/16 - Values - Reversing and rotating lists

To reverse (L - a list of values)
	(documented at ph_reverselist):
	(- LIST_OF_TY_Reverse({-pointer-to:L}); -).
To rotate (L - a list of values)
	(documented at ph_rotatelist):
	(- LIST_OF_TY_Rotate({-pointer-to:L}, 0); -).
To rotate (L - a list of values) backwards
	(documented at ph_rotatelistback):
	(- LIST_OF_TY_Rotate({-pointer-to:L}, 1); -).

Section SR5/2/17 - Values - Sorting lists

To sort (L - a list of values)
	(documented at ph_sortlist):
	(- LIST_OF_TY_Sort({-pointer-to:L}, 1); -).
To sort (L - a list of values) in reverse order
	(documented at ph_sortlistreverse):
	(- LIST_OF_TY_Sort({-pointer-to:L}, -1); -).
To sort (L - a list of values) in random order
	(documented at ph_sortlistrandom):
	(- LIST_OF_TY_Sort({-pointer-to:L}, 2); -).
To sort (L - a list of objects) in (P - property) order
	(documented at ph_sortlistproperty):
	(- LIST_OF_TY_Sort({-pointer-to:L}, 1, {P}, {-block-value:P}); -).
To sort (L - a list of objects) in reverse (P - property) order
	(documented at ph_sortlistpropertyreverse):
	(- LIST_OF_TY_Sort({-pointer-to:L}, -1, {P}, {-block-value:P}); -).

Section SR5/2/18 - Values - Use options

To decide whether using the/-- (UO - use option)
	(deprecated)
	(documented at ph_testuseoption_dep):
	(- (TestUseOption({UO})) -).

Section SR5/2/19 - Values - Relations

To show relation (R - relation)
	(documented at ph_showrelation):
	(- {-show-me}; RelationTest({-pointer-to:R}, RELS_SHOW); -).

To decide which object is next step via (R - relation of values to values)
	from (O1 - object) to (O2 - object)
	(documented at ph_nextstep):
	(- RelationRouteTo({-pointer-to:R},{O1},{O2},false) -).
To decide which number is number of steps via (R - relation of values to values)
	from (O1 - object) to (O2 - object)
	(documented at ph_numbersteps):
	(- RelationRouteTo({-pointer-to:R},{O1},{O2},true) -).

To decide which list of Ks is list of (name of kind of value K)
	that/which/whom (R - relation of Ks to values of kind L) relates
	(documented at ph_leftdomain):
	(- RelationTest({-pointer-to:R}, RELS_LIST, {-pointer-to-new:list of K}, RLIST_ALL_X) -).

To decide which list of Ls is list of (name of kind of value L)
	to which/whom (R - relation of values of kind K to Ls) relates
	(documented at ph_rightdomain):
	(- RelationTest({-pointer-to:R}, RELS_LIST, {-pointer-to-new:list of L}, RLIST_ALL_Y) -). [1]

To decide which list of Ls is list of (name of kind of value L)
	that/which/whom (R - relation of values of kind K to Ls) relates to
	(documented at ph_rightdomain):
	(- RelationTest({-pointer-to:R}, RELS_LIST, {-pointer-to-new:list of L}, RLIST_ALL_Y) -). [2]

To decide which list of Ks is list of (name of kind of value K) that/which/who
	relate to (Y - L) by (R - relation of Ks to values of kind L)
	(documented at ph_leftlookuplist):
	(- RelationTest({-pointer-to:R}, RELS_LOOKUP_ALL_X, {Y}, {-pointer-to-new:list of K}) -).

To decide which list of Ls is list of (name of kind of value L) to which/whom (X - K)
	relates by (R - relation of values of kind K to Ls)
	(documented at ph_rightlookuplist):
	(- RelationTest({-pointer-to:R}, RELS_LOOKUP_ALL_Y, {X}, {-pointer-to-new:list of L}) -). [1]

To decide which list of Ls is list of (name of kind of value L)
	that/which/whom (X - K) relates to by (R - relation of values of kind K to Ls)
	(documented at ph_rightlookuplist):
	(- RelationTest({-pointer-to:R}, RELS_LOOKUP_ALL_Y, {X}, {-pointer-to-new:list of L}) -). [2]

To decide whether (name of kind of value K) relates to (Y - L) by
	(R - relation of Ks to values of kind L)
	(documented at ph_ifright):
	(- RelationTest({-pointer-to:R}, RELS_LOOKUP_ANY, {Y}, RLANY_CAN_GET_X) -).

To decide whether (X - K) relates to (name of kind of value L) by
	(R - relation of values of kind K to Ls)
	(documented at ph_ifleft):
	(- RelationTest({-pointer-to:R}, RELS_LOOKUP_ANY, {X}, RLANY_CAN_GET_Y) -).

To decide which K is (name of kind of value K) that/which/who relates to
	(Y - L) by (R - relation of Ks to values of kind L)
	(documented at ph_leftlookup):
	(- RelationTest({-pointer-to:R}, RELS_LOOKUP_ANY, {Y}, RLANY_GET_X) -).

To decide which L is (name of kind of value L) to which/whom (X - K)
	relates by (R - relation of values of kind K to Ls)
	(documented at ph_rightlookup):
	(- RelationTest({-pointer-to:R}, RELS_LOOKUP_ANY, {X}, RLANY_GET_Y) -). [1]

To decide which L is (name of kind of value L) that/which/whom (X - K)
	relates to by (R - relation of values of kind K to Ls)
	(documented at ph_rightlookup):
	(- RelationTest({-pointer-to:R}, RELS_LOOKUP_ANY, {X}, RLANY_GET_Y) -). [2]

Section SR5/2/20 - Values - Functional programming

To decide whether (val - K) matches (desc - description of values of kind K)
	(documented at ph_valuematch):
	(- {-description-application} -).

To decide what K is (function - phrase nothing -> value of kind K) applied
	(documented at ph_applied0):
	(- {-function-application} -).

To decide what L is (function - phrase value of kind K -> value of kind L)
	applied to (input - K)
	(documented at ph_applied1):
	(- {-function-application} -).

To decide what M is (function - phrase (value of kind K, value of kind L) -> value of kind M)
	applied to (input - K) and (second input - L)
	(documented at ph_applied2):
	(- {-function-application} -).

To decide what N is (function - phrase (value of kind K, value of kind L, value of kind M) -> value of kind N)
	applied to (input - K) and (second input - L) and (third input - M)
	(documented at ph_applied3):
	(- {-function-application} -).

To apply (function - phrase nothing -> nothing)
	(documented at ph_apply0):
	(- {-function-application}; -).

To apply (function - phrase value of kind K -> nothing)
	to (input - K)
	(documented at ph_apply1):
	(- {-function-application}; -).

To apply (function - phrase (value of kind K, value of kind L) -> nothing)
	to (input - K) and (second input - L)
	(documented at ph_apply2):
	(- {-function-application}; -).

To apply (function - phrase (value of kind K, value of kind L, value of kind M) -> nothing)
	to (input - K) and (second input - L) and (third input - M)
	(documented at ph_apply3):
	(- {-function-application}; -).

To decide what list of L is (function - phrase K -> value of kind L) applied to (original list - list of values of kind K)
	(documented at ph_appliedlist):
	let the result be a list of Ls;
	repeat with item running through the original list:
		let the mapped item be the function applied to the item;
		add the mapped item to the result;
	decide on the result.

To decide what K is the (function - phrase (K, K) -> K) reduction of (original list - list of values of kind K)
	(documented at ph_reduction):
	let the total be a K;
	let the count be 0;
	repeat with item running through the original list:
		increase the count by 1;
		if the count is 1, now the total is the item;
		otherwise now the total is the function applied to the total and the item;
	decide on the total.

To decide what list of K is the filter to (criterion - description of Ks) of
	(full list - list of values of kind K)
	(documented at ph_filter):
	let the filtered list be a list of K;
	repeat with item running through the full list:
		if the item matches the criterion:
			add the item to the filtered list;
	decide on the filtered list.

To showme (V - value)
	(documented at ph_showme):
	(- {-show-me} -).

To decide what K is the default value of (V - name of kind of value of kind K)
	(documented at ph_defaultvalue):
	(- {-default-value-for:V} -).

Section SR5/2/21 - Values - Files (for Glulx external files language element only)

To read (filename - external file) into (T - table name)
	(documented at ph_readtable):
	(- FileIO_GetTable({filename}, {T}); -).
To write (filename - external file) from (T - table name)
	(documented at ph_writetable):
	(- FileIO_PutTable({filename}, {T}); -).
To decide if (filename - external file) exists
	(documented at ph_fileexists):
	(- (FileIO_Exists({filename}, false)) -).
To decide if ready to read (filename - external file)
	(documented at ph_fileready):
	(- (FileIO_Ready({filename}, false)) -).
To mark (filename - external file) as ready to read
	(documented at ph_markfileready):
	(- FileIO_MarkReady({filename}, true); -).
To mark (filename - external file) as not ready to read
	(documented at ph_markfilenotready):
	(- FileIO_MarkReady({filename}, false); -).
To write (T - text) to (FN - external file)
	(documented at ph_writetext):
	(- FileIO_PutContents({FN}, {-allow-stack-frame-access:T}, false); -).
To append (T - text) to (FN - external file)
	(documented at ph_appendtext):
	(- FileIO_PutContents({FN}, {-allow-stack-frame-access:T}, true); -).
To say text of (FN - external file)
	(documented at ph_saytext):
	(- FileIO_PrintContents({FN}); say__p = 1; -).

Section SR5/2/22 - Values - Figures (for figures language element only)

To display (F - figure name), one time only
	(documented at ph_displayfigure):
	(- DisplayFigure(ResourceIDsOfFigures-->{F}, {phrase options}); -).
To decide which number is the Glulx resource ID of (F - figure name)
	(documented at ph_figureid):
	(- ResourceIDsOfFigures-->{F} -).

Section SR5/2/23 - Values - Sound effects (for sounds language element only)

To play (SFX - sound name), one time only
	(documented at ph_playsf):
	(- PlaySound(ResourceIDsOfSounds-->{SFX}, {phrase options}); -).
To decide which number is the Glulx resource ID of (SFX - sound name)
	(documented at ph_soundid):
	(- ResourceIDsOfSounds-->{SFX} -).

Section SR5/3/1 - Control phrases - If and unless

To if (c - condition) , (ph - phrase)
	(documented at ph_if):
	(- if {c} {ph} -).
To if (c - condition) begin -- end
	(documented at ph_if):
	(- if {c}  -).
To if (c - condition) then (ph - phrase)
	(deprecated)
	(documented at ph_if_dep):
	(- if {c} {ph} -).
To unless (c - condition) , (ph - phrase)
	(documented at ph_unless):
	(- if (~~{c}) {ph} -).
To unless (c - condition) begin -- end
	(documented at ph_unless):
	(- if (~~{c})  -).

To otherwise if (c - condition)
	(documented at ph_otherwise):
	(- } else if {c} { -).
To otherwise unless (c - condition)
	(documented at ph_otherwise):
	(- } else if (~~{c}) { -).
To otherwise (ph - phrase)
	(documented at ph_otherwise):
	(- else {ph} -).
To else if (c - condition)
	(documented at ph_otherwise):
	(- } else if {c} { -).
To else unless (c - condition)
	(documented at ph_otherwise):
	(- } else if (~~{c}) { -).
To else (ph - phrase)
	(documented at ph_otherwise):
	(- else {ph} -).

To if (V - word value) is begin -- end
	(documented at ph_switch):
	(- switch({V})  -).

Section SR5/3/2 - Control phrases - While

To while (c - condition) repeatedly (ph - phrase)
	(deprecated)
	(documented at ph_while_dep):
	(- while {c} {ph} -).
To while (c - condition) , (ph - phrase)
	(deprecated)
	(documented at ph_while_dep):
	(- while {c} {ph} -).
To while (c - condition) begin -- end
	(documented at ph_while):
	(- while {c}  -).

Section SR5/3/3 - Control phrases - Repeat

To repeat with (loopvar - nonexisting K variable)
	running from (v - arithmetic value of kind K) to (w - K) begin -- end
	(documented at ph_repeat):
		(- for ({loopvar}={v}: {loopvar}<={w}: {loopvar}++)  -).
To repeat with (loopvar - nonexisting K variable)
	running from (v - enumerated value of kind K) to (w - K) begin -- end
	(documented at ph_repeat):
		(- for ({loopvar}={v}: {loopvar}<={w}: {loopvar}++)  -).
To repeat with (loopvar - nonexisting K variable)
	running through (OS - description of values of kind K) begin -- end
	(documented at ph_runthrough):
		(- {-loop-over:OS}  -).
To repeat with (loopvar - nonexisting object variable)
	running through (L - list of values) begin -- end
	(documented at ph_repeatlist):
	(- {-loop-over-list:L}  -).

To repeat through (T - table name) begin -- end
	(documented at ph_repeattable):
	(- {-push-ctvs}
		for ({-ct-v0}={T},{-ct-v1}=1,ct_0={-ct-v0},ct_1={-ct-v1}:
			{-ct-v1}<=TableRows({-ct-v0}):{-ct-v1}++,ct_0={-ct-v0},ct_1={-ct-v1})
			if (TableRowIsBlank(ct_0,ct_1)==false)  -).
To repeat through (T - table name) in reverse order begin -- end
	(documented at ph_repeattablereverse):
	(- {-push-ctvs}
		for ({-ct-v0}={T},{-ct-v1}=TableRows({-ct-v0}),ct_0={-ct-v0},ct_1={-ct-v1}:
			{-ct-v1}>=1:{-ct-v1}--,ct_0={-ct-v0},ct_1={-ct-v1})
			if (TableRowIsBlank(ct_0,ct_1)==false)  -).
To repeat through (T - table name) in (TC - table column) order begin -- end
	(documented at ph_repeattablecol):
	(- {-push-ctvs}
		for ({-ct-v0}={T},{-ct-v1}=TableNextRow({-ct-v0},{TC},0,1),ct_0={-ct-v0},ct_1={-ct-v1}:
			{-ct-v1}~=0:
			{-ct-v1}=TableNextRow({-ct-v0},{TC},{-ct-v1},1),ct_0={-ct-v0},ct_1={-ct-v1})  -).
To repeat through (T - table name) in reverse (TC - table column) order begin -- end
	(documented at ph_repeattablecolreverse):
	(- {-push-ctvs}
		for ({-ct-v0}={T},{-ct-v1}=TableNextRow({-ct-v0},{TC},0,-1),ct_0={-ct-v0},ct_1={-ct-v1}:
			{-ct-v1}~=0:
			{-ct-v1}=TableNextRow({-ct-v0},{TC},{-ct-v1},-1),ct_0={-ct-v0},ct_1={-ct-v1})  -).

Section SR5/3/6 - Control phrases - Changing the flow of loops

To break -- in loop
	(documented at ph_break):
	(- break; -).
To next -- in loop
	(documented at ph_next):
	(- continue; -).

Section SR5/3/7 - Control phrases - Deciding outcomes

To yes
	(documented at ph_yes):
	(- rtrue; -) - in to decide if only.
To decide yes
	(documented at ph_yes):
	(- rtrue; -) - in to decide if only.
To no
	(documented at ph_no):
	(- rfalse; -) - in to decide if only.
To decide no
	(documented at ph_no):
	(- rfalse; -) - in to decide if only.

To decide on (something - value)
	(documented at ph_decideon):
	(- return {-check-return-type:something}; -).

Section SR5/3/8 - Control phrases - Stop or go

To do nothing (documented at ph_nothing):
	(- ; -).
To stop (documented at ph_stop):
	(- return; -) - in to only.

Section SR5/4/1 - Actions, activities and rules - Trying actions

To try (doing something - action)
	(documented at ph_try):
	(- {doing something}; -).
To silently try (doing something - action)
	(documented at ph_trysilently):
	(- @push keep_silent; keep_silent=1; {doing something}; @pull keep_silent; -).
To try silently (doing something - action)
	(documented at ph_trysilently):
	(- @push keep_silent; keep_silent=1; {doing something}; @pull keep_silent; -).

Section SR5/4/2 - Actions, activities and rules - Action requirements

To decide whether the action requires a touchable noun
	(documented at ph_requirestouch):
	(- (NeedToTouchNoun()) -).
To decide whether the action requires a touchable second noun
	(documented at ph_requirestouch2):
	(- (NeedToTouchSecondNoun()) -).
To decide whether the action requires a carried noun
	(documented at ph_requirescarried):
	(- (NeedToCarryNoun()) -).
To decide whether the action requires a carried second noun
	(documented at ph_requirescarried2):
	(- (NeedToCarrySecondNoun()) -).
To decide whether the action requires light
	(documented at ph_requireslight):
	(- (NeedLightForAction()) -).

Section SR5/4/3 - Actions, activities and rules - Stop or continue

To stop the action
	(documented at ph_stopaction):
	(- rtrue; -) - in to only.
To continue the action
	(documented at ph_continueaction):
	(- rfalse; -) - in to only.

Section SR5/4/4 - Actions, activities and rules - Stored actions

To decide what stored action is the current action
	(documented at ph_currentaction):
	(- STORED_ACTION_TY_Current({-pointer-to-new:stored action}) -).
To decide what stored action is the action of (A - action)
	(documented at ph_actionof):
	(- {A}{-backspace}{-backspace}, STORED_ACTION_TY_Current({-pointer-to-new:stored action})) -).
To try (S - stored action)
	(documented at ph_trystored):
	(- STORED_ACTION_TY_Try({S}); -).
To silently try (S - stored action)
	(documented at ph_trystoredsilently):
	(- STORED_ACTION_TY_Try({S}, true); -).
To try silently (S - stored action)
	(documented at ph_trystoredsilently):
	(- STORED_ACTION_TY_Try({S}, true); -).
To decide if (act - a stored action) involves (X - an object)
	(documented at ph_involves):
	(- (STORED_ACTION_TY_Involves({-pointer-to:act}, {X})) -).
To decide what action name is the action name part of (act - a stored action)
	(documented at ph_actionpart):
	(- (STORED_ACTION_TY_Part({-pointer-to:act}, 0)) -).
To decide what object is the noun part of (act - a stored action)
	(documented at ph_nounpart):
	(- (STORED_ACTION_TY_Part({-pointer-to:act}, 1)) -).
To decide what object is the second noun part of (act - a stored action)
	(documented at ph_secondpart):
	(- (STORED_ACTION_TY_Part({-pointer-to:act}, 2)) -).
To decide what object is the actor part of (act - a stored action)
	(documented at ph_actorpart):
	(- (STORED_ACTION_TY_Part({-pointer-to:act}, 3)) -).

Section SR5/4/5 - Actions, activities and rules - Carrying out activities

To carry out the (A - activity on nothing) activity
	(documented at ph_carryout):
	(- CarryOutActivity({A}); -).
To carry out the (A - activity on value of kind K) activity with (val - K)
	(documented at ph_carryoutwith):
	(- CarryOutActivity({A}, {val}); -).

To continue the activity
	(documented at ph_continueactivity):
	(- rfalse; -) - in to only.

Section SR5/4/6 - Actions, activities and rules - Advanced activities

To begin the (A - activity on nothing) activity
	(documented at ph_beginactivity):
	(- BeginActivity({A}); -).
To begin the (A - activity on value of kind K) activity with (val - K)
	(documented at ph_beginactivitywith):
	(- BeginActivity({A}, {val}); -).
To decide whether handling (A - activity) activity
	(documented at ph_handlingactivity):
	(- (~~(ForActivity({A}))) -).
To decide whether handling (A - activity on value of kind K) activity with (val - K)
	(documented at ph_handlingactivitywith):
	(- (~~(ForActivity({A}, {val}))) -).
To end the (A - activity on nothing) activity
	(documented at ph_endactivity):
	(- EndActivity({A}); -).
To end the (A - activity on value of kind K) activity with (val - K)
	(documented at ph_endactivitywith):
	(- EndActivity({A}, {val}); -).
To abandon the (A - activity on nothing) activity
	(documented at ph_abandonactivity):
	(- AbandonActivity({A}); -).
To abandon the (A - activity on value of kind K) activity with (val - K)
	(documented at ph_abandonactivitywith):
	(- AbandonActivity({A}, {val}); -).

Section SR5/4/7 - Actions, activities and rules - Following rules

To follow (RL - a rule)
	(documented at ph_follow):
	(- FollowRulebook({RL}); -).
To follow (RL - value of kind K based rule producing a value) for (V - K)
	(documented at ph_followfor):
	(- FollowRulebook({RL}, {V}, true); -).
To consider (RL - a rule)
	(documented at ph_consider):
	(- ProcessRulebook({RL}); -).
To consider (RL - value of kind K based rule producing a value) for (V - K)
	(documented at ph_considerfor):
	(- ProcessRulebook({RL}, {V}, true); -).
To decide what K is the (name of kind K) produced by (RL - rule producing a value of kind K)
	(documented at ph_producedby):
	(- ResultOfRule({RL}, 0, false, {-strong-kind:K}) -).
To decide what L is the (name of kind L) produced by (RL - value of kind K based rule
	producing a value of kind L) for (V - K)
	(documented at ph_producedbyfor):
	(- ResultOfRule({RL}, {V}, true, {-strong-kind:L}) -).
To abide by (RL - a rule)
	(documented at ph_abide):
	(- if (ProcessRulebook({RL})) rtrue; -) - in to only.
To abide by (RL - value of kind K based rule producing a value) for (V - K)
	(documented at ph_abidefor):
	(- if (ProcessRulebook({RL}, {V}, true)) rtrue; -) - in to only.
To anonymously abide by (RL - a rule)
	(documented at ph_abideanon):
	(- if (temporary_value = ProcessRulebook({RL})) {
		if (RulebookSucceeded()) ActRulebookSucceeds(temporary_value);
		else ActRulebookFails(temporary_value);
		return 2;
	} -) - in to only.
To anonymously abide by (RL - value of kind K based rule producing a value) for (V - K)
	(documented at ph_abideanon):
	(- if (temporary_value = ProcessRulebook({RL}, {V}, true)) {
		if (RulebookSucceeded()) ActRulebookSucceeds(temporary_value);
		else ActRulebookFails(temporary_value);
		return 2;
	} -) - in to only.

Section SR5/4/8 - Actions, activities and rules - Success and failure

To make no decision
	(documented at ph_nodecision): (- rfalse; -) - in to only.
To rule succeeds
	(documented at ph_succeeds):
	(- RulebookSucceeds(); rtrue; -) - in to only.
To rule fails
	(documented at ph_fails):
	(- RulebookFails(); rtrue; -) - in to only.
To rule succeeds with result (val - a value)
	(documented at ph_succeedswith):
	(- RulebookSucceeds({-weak-kind-to-be-produced:val},{-check-success-type:val}); rtrue; -) - in to only.
To decide if rule succeeded
	(documented at ph_succeeded):
	(- (RulebookSucceeded()) -).
To decide if rule failed
	(documented at ph_failed):
	(- (RulebookFailed()) -).
To decide which rulebook outcome is the outcome of the rulebook
	(documented at ph_rulebookoutcome):
	(- (ResultOfRule()) -).

Section SR5/4/9 - Actions, activities and rules - Procedural manipulation

To ignore (RL - a rule)
	(deprecated)
	(documented at ph_ignore_dep):
	(- SuppressRule({RL}); -).
To reinstate (RL - a rule)
	(deprecated)
	(documented at ph_reinstate_dep):
	(- ReinstateRule({RL}); -).
To reject the result of (RL - a rule)
	(deprecated)
	(documented at ph_reject_dep):
	(- DonotuseRule({RL}); -).
To accept the result of (RL - a rule)
	(deprecated)
	(documented at ph_accept_dep):
	(- DonotuseRule({RL}); -).
To substitute (RL1 - a rule) for (RL2 - a rule)
	(deprecated)
	(documented at ph_substitute_dep):
	(- SubstituteRule({RL1},{RL2}); -).
To restore the original (RL1 - a rule)
	(deprecated)
	(documented at ph_restore_dep):
	(- SubstituteRule({RL1},{RL1}); -).
To move (RL1 - a rule) to before (RL2 - a rule)
	(deprecated)
	(documented at ph_movebefore_dep):
	(- MoveRuleBefore({RL1},{RL2}); -).
To move (RL1 - a rule) to after (RL2 - a rule)
	(deprecated)
	(documented at ph_moveafter_dep):
	(- MoveRuleAfter({RL1},{RL2}); -).

Section SR5/5/1 - Model world - Ending the story

To end the story
	(documented at ph_end):
	(- deadflag=3; story_complete=false; -).
To end the story finally
	(documented at ph_endfinally):
	(- deadflag=3; story_complete=true; -).
To end the story saying (finale - text)
	(documented at ph_endsaying):
	(- deadflag={finale}; story_complete=false; -).
To end the story finally saying (finale - text)
	(documented at ph_endfinallysaying):
	(- deadflag={finale}; story_complete=true; -).
To decide whether the story has ended
	(documented at ph_ended):
	(- (deadflag~=0) -).
To decide whether the story has ended finally
	(documented at ph_finallyended):
	(- (story_complete) -).
To decide whether the story has not ended
	(documented at ph_notended):
	(- (deadflag==0) -).
To decide whether the story has not ended finally
	(documented at ph_notfinallyended):
	(- (story_complete==false) -).
To resume the story
	(documented at ph_resume):
	(- resurrect_please = true; -).

To end the game in death (deprecated)
	(documented at ph_enddeath_dep):
	(- deadflag=1; story_complete=false; -).
To end the game in victory (deprecated)
	(documented at ph_endvictory_dep):
	(- deadflag=2; story_complete=true; -).
To end the game saying (finale - text) (deprecated)
	(documented at ph_endgamesaying_dep):
	(- deadflag={finale}; story_complete=false; -).
To resume the game (deprecated)
	(documented at ph_resumegame_dep):
	(- resurrect_please = true; -).
To decide whether the game is in progress (deprecated)
	(documented at ph_inprogress_dep):
	(- (deadflag==0) -).
To decide whether the game is over (deprecated)
	(documented at ph_over_dep):
	(- (deadflag~=0) -).
To decide whether the game ended in death (deprecated)
	(documented at ph_endeddeath_dep):
	(- (deadflag==1) -).
To decide whether the game ended in victory (deprecated)
	(documented at ph_endedvictory_dep):
	(- (deadflag==2) -).

Section SR5/5/2 - Model world - Times of day

To decide which number is the minutes part of (t - time)
	(documented at ph_minspart):
	(- ({t}%ONE_HOUR) -).
To decide which number is the hours part of (t - time)
	(documented at ph_hourspart):
	(- ({t}/ONE_HOUR) -).

To decide if (t - time) is before (t2 - time)
	(documented at ph_timebefore):
	(- ((({t}+20*ONE_HOUR)%(TWENTY_FOUR_HOURS))<(({t2}+20*ONE_HOUR)%(TWENTY_FOUR_HOURS))) -).
To decide if (t - time) is after (t2 - time)
	(documented at ph_timeafter):
	(- ((({t}+20*ONE_HOUR)%(TWENTY_FOUR_HOURS))>(({t2}+20*ONE_HOUR)%(TWENTY_FOUR_HOURS))) -).
To decide if it is before (t2 - time) (deprecated)
	(documented at ph_itisbefore_dep):
	(- (((the_time+20*ONE_HOUR)%(TWENTY_FOUR_HOURS))<(({t2}+20*ONE_HOUR)%(TWENTY_FOUR_HOURS))) -).
To decide if it is after (t2 - time) (deprecated)
	(documented at ph_itisafter_dep):
	(- (((the_time+20*ONE_HOUR)%(TWENTY_FOUR_HOURS))>(({t2}+20*ONE_HOUR)%(TWENTY_FOUR_HOURS))) -).
To decide which time is (t - time) before (t2 - time)
	(documented at ph_shiftbefore):
	(- (({t2}-{t}+TWENTY_FOUR_HOURS)%(TWENTY_FOUR_HOURS)) -).
To decide which time is (t - time) after (t2 - time)
	(documented at ph_shiftafter):
	(- (({t2}+{t}+TWENTY_FOUR_HOURS)%(TWENTY_FOUR_HOURS)) -).

Section SR5/5/3 - Model world - Durations

To decide which time is (n - number) minutes
	(documented at ph_durationmins):
	(- (({n})%(TWENTY_FOUR_HOURS)) -).
To decide which time is (n - number) hours
	(documented at ph_durationhours):
	(- (({n}*ONE_HOUR)%(TWENTY_FOUR_HOURS)) -).

Section SR5/5/4 - Model world - Timed events

To (R - rule) in (t - number) turn/turns from now
	(documented at ph_turnsfromnow):
	(- SetTimedEvent({-mark-event-used:R}, {t}+1, 0); -).
To (R - rule) at (t - time)
	(documented at ph_attime):
	(- SetTimedEvent({-mark-event-used:R}, {t}, 1); -).
To (R - rule) in (t - time) from now
	(documented at ph_timefromnow):
	(- SetTimedEvent({-mark-event-used:R}, (the_time+{t})%(TWENTY_FOUR_HOURS), 1); -).

Section SR5/5/5 - Model world - Scenes

To decide if (sc - scene) has happened
	(documented at ph_hashappened):
	(- (scene_endings-->({sc}-1)) -).
To decide if (sc - scene) has not happened
	(documented at ph_hasnothappened):
	(- (scene_endings-->({sc}-1) == 0) -).
To decide if (sc - scene) has ended
	(documented at ph_hasended):
	(- (scene_endings-->({sc}-1) > 1) -).
To decide if (sc - scene) has not ended
	(documented at ph_hasnotended):
	(- (scene_endings-->({sc}-1) <= 1) -).

Section SR5/5/6 - Model world - Timing of scenes

To decide which time is the time since (sc - scene) began
	(documented at ph_scenetimesincebegan):
	(- (SceneUtility({sc}, 1)) -).
To decide which time is the time when (sc - scene) began
	(documented at ph_scenetimewhenbegan):
	(- (SceneUtility({sc}, 2)) -).
To decide which time is the time since (sc - scene) ended
	(documented at ph_scenetimesinceended):
	(- (SceneUtility({sc}, 3)) -).
To decide which time is the time when (sc - scene) ended
	(documented at ph_scenetimewhenended):
	(- (SceneUtility({sc}, 4)) -).

Section SR5/5/7 - Model world - Player's identity and location

To change the/-- player to (O - an object)
	(deprecated)
	(documented at ph_changeplayer_dep):
	(- ChangePlayer({O}); -).
To decide whether in (somewhere - an object)
	(deprecated)
	(documented at ph_in_dep):
	(- (WhetherIn({somewhere})) -).
To decide whether in darkness
	(documented at ph_indarkness):
	(- (location==thedark) -).

Section SR5/5/8 - Model world - Moving and removing things

To move (something - object) to (something else - object),
	without printing a room description
	or printing an abbreviated room description
	(documented at ph_move):
	(- MoveObject({something}, {something else}, {phrase options}, false); -).
To remove (something - object) from play
	(documented at ph_remove):
	(- RemoveFromPlay({something}); -).
To move (O - object) backdrop to all (D - description of objects)
	(documented at ph_movebackdrop):
	(- MoveBackdrop({O}, {D}); -).
To update backdrop positions
	(documented at ph_updatebackdrop):
	(- MoveFloatingObjects(); -).

Section SR5/5/9 - Model world - The map

To decide which room is location of (O - object)
	(documented at ph_locationof):
	(- LocationOf({O}) -).
To decide which room is room (D - direction) from/of (R1 - room)
	(documented at ph_roomdirof):
	(- MapConnection({R1},{D}) -).
To decide which door is door (D - direction) from/of (R1 - room)
	(documented at ph_doordirof):
	(- DoorFrom({R1},{D}) -).
To decide which object is the other side of (D - door) from (R1 - room)
	(documented at ph_othersideof):
	(- OtherSideOfDoor({D},{R1}) -).
To decide which object is the direction of (D - door) from (R1 - room)
	(documented at ph_directionofdoor):
	(- DirectionDoorLeadsIn({D},{R1}) -).
To decide which object is room-or-door (D - direction) from/of (R1 - room)
	(documented at ph_roomordoor):
	(- RoomOrDoorFrom({R1},{D}) -).
To change (D - direction) exit of (R1 - room) to (R2 - room)
	(documented at ph_changeexit):
	(- AssertMapConnection({R1},{D},{R2}); -).
To change (D - direction) exit of (R1 - room) to nothing/nowhere
	(documented at ph_changenoexit):
	(- AssertMapConnection({R1},{D},nothing); -).
To decide which room is the front side of (D - object)
	(documented at ph_frontside):
	(- FrontSideOfDoor({D}) -).
To decide which room is the back side of (D - object)
	(documented at ph_backside):
	(- BackSideOfDoor({D}) -).

Section SR5/5/10 - Model world - Route-finding

To decide which object is best route from (R1 - object) to (R2 - object),
	using doors or using even locked doors
	(documented at ph_bestroute):
	(- MapRouteTo({R1},{R2},0,{phrase options}) -).
To decide which number is number of moves from (R1 - object) to (R2 - object),
	using doors or using even locked doors
	(documented at ph_bestroutelength):
	(- MapRouteTo({R1},{R2},0,{phrase options},true) -).
To decide which object is best route from (R1 - object) to (R2 - object) through
	(RS - description of objects),
	using doors or using even locked doors
	(documented at ph_bestroutethrough):
	(- MapRouteTo({R1},{R2},{RS},{phrase options}) -).
To decide which number is number of moves from (R1 - object) to (R2 - object) through
	(RS - description of objects),
	using doors or using even locked doors
	(documented at ph_bestroutethroughlength):
	(- MapRouteTo({R1},{R2},{RS},{phrase options},true) -).

Section SR5/5/11 - Model world - The object tree

To decide which object is holder of (something - object)
	(documented at ph_holder):
	(- (HolderOf({something})) -).
To decide which object is next thing held after (something - object)
	(documented at ph_nextheld):
	(- (sibling({something})) -).
To decide which object is first thing held by (something - object)
	(documented at ph_firstheld):
	(- (child({something})) -).

Section SR5/5/12 - Model world - Score

To award (some - number) point/points
	(deprecated)
	(documented at ph_awardpoints_dep):
	(- score=score+{some}; -).

Section SR5/6/1 - Understanding - Asking yes/no questions

To decide whether player consents
	(documented at ph_consents):
		(- YesOrNo() -).

Section SR5/6/2 - Understanding - The player's command

To decide if (S - a snippet) matches (T - a topic)
	(documented at ph_snippetmatches):
	(- (SnippetMatches({S}, {T})) -).
To decide if (S - a snippet) does not match (T - a topic)
	(documented at ph_snippetdoesnotmatch):
	(- (SnippetMatches({S}, {T}) == false) -).
To decide if (S - a snippet) includes (T - a topic)
	(documented at ph_snippetincludes):
	(- (matched_text=SnippetIncludes({T},{S})) -).
To decide if (S - a snippet) does not include (T - a topic)
	(documented at ph_snippetdoesnotinclude):
	(- (SnippetIncludes({T},{S})==0) -).

Section SR5/6/3 - Understanding - Changing the player's command

To change the text of the player's command to (txb - indexed text)
	(documented at ph_changecommand):
	(- SetPlayersCommand({-pointer-to:txb}); -).
To replace (S - a snippet) with (T - text)
	(documented at ph_replacesnippet):
	(- SpliceSnippet({S}, {T}); -).
To cut (S - a snippet)
	(documented at ph_cutsnippet):
	(- SpliceSnippet({S}, 0); -).
To reject the player's command
	(documented at ph_rejectcommand):
	(- RulebookFails(); rtrue; -) - in to only.

Section SR5/6/4 - Understanding - Scope and pronouns

To place (O - an object) in scope, but not its contents
	(documented at ph_placeinscope):
	(- PlaceInScope({O}, {phrase options}); -).
To place the/-- contents of (O - an object) in scope
	(documented at ph_placecontentsinscope):
	(- ScopeWithin({O}); -).
To set pronouns from (O - an object)
	(documented at ph_setpronouns):
	(- PronounNotice({O}); -).
To set pronouns from possessions of the player
	(deprecated)
	(documented at ph_setpronouns_dep):
	(- PronounNoticeHeldObjects(); -).

Section SR5/8/1 - Message support - Issuance - Unindexed

To stop the action with library message (AN - an action name) number
	(N - a number) for (H - an object):
	(- return GL__M({AN},{N},{H}); -) - in to only.
To stop the action with library message (AN - an action name) number
	(N - a number):
	(- return GL__M({AN},{N},noun); -) - in to only.
To issue miscellaneous library message number (N - a number):
	(- GL__M(##Miscellany,{N}); -).
To issue miscellaneous library message number (N - a number) for (H - an object):
	(- GL__M(##Miscellany,{N}, {H}); -).
To issue library message (AN - an action name) number
	(N - a number) for (H - an object):
	(- GL__M({AN},{N},{H}); -).
To issue library message (AN - an action name) number
	(N - a number) for (H - an object) and (H2 - an object):
	(- GL__M({AN},{N},{H},{H2}); -).
To issue library message (AN - an action name) number (N - a number):
	(- GL__M({AN},{N},noun); -).
To issue actor-based library message (AN - an action name) number
	(N - a number) for (H - an object) and (H2 - an object):
	(- AGL__M({AN},{N},{H},{H2}); -).
To issue actor-based library message (AN - an action name) number
	(N - a number) for (H - an object):
	(- AGL__M({AN},{N},{H}); -).
To issue actor-based library message (AN - an action name) number (N - a number):
	(- AGL__M({AN},{N},noun); -).

To issue score notification message:
	(- NotifyTheScore(); -).
To say pronoun dictionary word:
	(- print (address) pronoun_word; -).
To say recap of command:
	(- PrintCommand(); -).
The pronoun reference object is an object that varies.
The pronoun reference object variable translates into I6 as "pronoun_obj".
The library message action is an action name that varies.
The library message action variable translates into I6 as "lm_act".
The library message number is a number that varies.
The library message number variable translates into I6 as "lm_n".
The library message amount is a number that varies.
The library message amount variable translates into I6 as "lm_o".
The library message object is an object that varies.
The library message object variable translates into I6 as "lm_o".
The library message actor is an object that varies.
The library message actor variable translates into I6 as "actor".
The second library message object is an object that varies.
The second library message object variable translates into I6 as "lm_o2".

Section SR5/8/2 - Message support - Intervention - Unindexed

To decide if intervened in miscellaneous message:
	decide on false;

To decide if intervened in miscellaneous list message:
	decide on false;

To decide if intervened in action message:
	decide on false;

Section SR5/9/1 - Miscellaneous other phrases - Unindexed

To decide which object is the component parts core of (X - an object):
	(- CoreOf({X}) -).
To decide which object is the common ancestor of (O - an object) with
	(P - an object):
	 (- (CommonAncestor({O}, {P})) -).
To decide which object is the not-counting-parts holder of (O - an object):
	 (- (CoreOfParentOfCoreOf({O})) -).
To decide which object is the visibility-holder of (O - object):
	(- VisibilityParent({O}) -).
To calculate visibility ceiling at low level:
	(- FindVisibilityLevels(); -).

To decide which number is the visibility ceiling count calculated:
	(- visibility_levels -).
To decide which object is the visibility ceiling calculated:
	(- visibility_ceiling -).

To produce a room description with going spacing conventions:
	(- LookAfterGoing(); -).

To print the location's description:
	(- PrintOrRun(location, description); -).

To decide whether the I6 parser is running multiple actions:
	(- (multiflag==1) -).

To decide if set to sometimes abbreviated room descriptions:
	(- (lookmode == 1) -).
To decide if set to unabbreviated room descriptions:
	(- (lookmode == 2) -).
To decide if set to abbreviated room descriptions:
	(- (lookmode == 3) -).

To convert to (AN - an action name) on (O - an object):
	(- return GVS_Convert({AN},{O},0); -) - in to only.
To convert to request of (X - object) to perform (AN - action name) with
	(Y - object) and (Z - object):
	(- TryAction(true, {X}, {AN}, {Y}, {Z}); rtrue; -).
To convert to special going-with-push action:
	(- ConvertToGoingWithPush(); rtrue; -).

To surreptitiously move (something - object) to (something else - object):
	(- move {something} to {something else}; -).
To surreptitiously move (something - object) to (something else - object) during going:
	(- MoveDuringGoing({something}, {something else}); -).
To surreptitiously reckon darkness:
	(- SilentlyConsiderLight(); -).

To ***:
	(- {-verbose-checking} -).

The Standard Rules end here.

---- DOCUMENTATION ----

Unlike other extensions, the Standard Rules are compulsorily included
with every project. They define the phrases, kinds and relations which
are basic to Inform, and which are described throughout the documentation.
