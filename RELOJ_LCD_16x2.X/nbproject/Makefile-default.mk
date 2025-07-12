#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/RELOJ_LCD_16x2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/RELOJ_LCD_16x2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=RELOJ_LCD_16x2_MAIN.c "C:/Mis Proyectos/Librerias/I2C/I2C.X/I2C.c" "C:/Mis Proyectos/Librerias/DS1307/DS1307.X/DS1307.c" "C:/Mis Proyectos/Librerias/Display/LCD_16x2.X/LCD_16x2.c" "C:/Mis Proyectos/Librerias/BMP280.X/BMP280.c" "C:/Mis Proyectos/Librerias/Conversor_unit.X/BCD_CONVER.c" "C:/Mis Proyectos/Librerias/AHT20.X/AHT20.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1 ${OBJECTDIR}/_ext/871039659/I2C.p1 ${OBJECTDIR}/_ext/283620341/DS1307.p1 ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1 ${OBJECTDIR}/_ext/1774415731/BMP280.p1 ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1 ${OBJECTDIR}/_ext/1939770129/AHT20.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1.d ${OBJECTDIR}/_ext/871039659/I2C.p1.d ${OBJECTDIR}/_ext/283620341/DS1307.p1.d ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1.d ${OBJECTDIR}/_ext/1774415731/BMP280.p1.d ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1.d ${OBJECTDIR}/_ext/1939770129/AHT20.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1 ${OBJECTDIR}/_ext/871039659/I2C.p1 ${OBJECTDIR}/_ext/283620341/DS1307.p1 ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1 ${OBJECTDIR}/_ext/1774415731/BMP280.p1 ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1 ${OBJECTDIR}/_ext/1939770129/AHT20.p1

# Source Files
SOURCEFILES=RELOJ_LCD_16x2_MAIN.c C:/Mis Proyectos/Librerias/I2C/I2C.X/I2C.c C:/Mis Proyectos/Librerias/DS1307/DS1307.X/DS1307.c C:/Mis Proyectos/Librerias/Display/LCD_16x2.X/LCD_16x2.c C:/Mis Proyectos/Librerias/BMP280.X/BMP280.c C:/Mis Proyectos/Librerias/Conversor_unit.X/BCD_CONVER.c C:/Mis Proyectos/Librerias/AHT20.X/AHT20.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/RELOJ_LCD_16x2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F877A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1: RELOJ_LCD_16x2_MAIN.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1.d 
	@${RM} ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1 RELOJ_LCD_16x2_MAIN.c 
	@-${MV} ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.d ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/871039659/I2C.p1: C:/Mis\ Proyectos/Librerias/I2C/I2C.X/I2C.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/871039659" 
	@${RM} ${OBJECTDIR}/_ext/871039659/I2C.p1.d 
	@${RM} ${OBJECTDIR}/_ext/871039659/I2C.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/871039659/I2C.p1 "C:/Mis Proyectos/Librerias/I2C/I2C.X/I2C.c" 
	@-${MV} ${OBJECTDIR}/_ext/871039659/I2C.d ${OBJECTDIR}/_ext/871039659/I2C.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/871039659/I2C.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/283620341/DS1307.p1: C:/Mis\ Proyectos/Librerias/DS1307/DS1307.X/DS1307.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/283620341" 
	@${RM} ${OBJECTDIR}/_ext/283620341/DS1307.p1.d 
	@${RM} ${OBJECTDIR}/_ext/283620341/DS1307.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/283620341/DS1307.p1 "C:/Mis Proyectos/Librerias/DS1307/DS1307.X/DS1307.c" 
	@-${MV} ${OBJECTDIR}/_ext/283620341/DS1307.d ${OBJECTDIR}/_ext/283620341/DS1307.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/283620341/DS1307.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/677274316/LCD_16x2.p1: C:/Mis\ Proyectos/Librerias/Display/LCD_16x2.X/LCD_16x2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/677274316" 
	@${RM} ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1 "C:/Mis Proyectos/Librerias/Display/LCD_16x2.X/LCD_16x2.c" 
	@-${MV} ${OBJECTDIR}/_ext/677274316/LCD_16x2.d ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1774415731/BMP280.p1: C:/Mis\ Proyectos/Librerias/BMP280.X/BMP280.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1774415731" 
	@${RM} ${OBJECTDIR}/_ext/1774415731/BMP280.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1774415731/BMP280.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1774415731/BMP280.p1 "C:/Mis Proyectos/Librerias/BMP280.X/BMP280.c" 
	@-${MV} ${OBJECTDIR}/_ext/1774415731/BMP280.d ${OBJECTDIR}/_ext/1774415731/BMP280.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1774415731/BMP280.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1: C:/Mis\ Proyectos/Librerias/Conversor_unit.X/BCD_CONVER.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2044839580" 
	@${RM} ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1 "C:/Mis Proyectos/Librerias/Conversor_unit.X/BCD_CONVER.c" 
	@-${MV} ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.d ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1939770129/AHT20.p1: C:/Mis\ Proyectos/Librerias/AHT20.X/AHT20.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1939770129" 
	@${RM} ${OBJECTDIR}/_ext/1939770129/AHT20.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1939770129/AHT20.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1939770129/AHT20.p1 "C:/Mis Proyectos/Librerias/AHT20.X/AHT20.c" 
	@-${MV} ${OBJECTDIR}/_ext/1939770129/AHT20.d ${OBJECTDIR}/_ext/1939770129/AHT20.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1939770129/AHT20.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1: RELOJ_LCD_16x2_MAIN.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1.d 
	@${RM} ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1 RELOJ_LCD_16x2_MAIN.c 
	@-${MV} ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.d ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/RELOJ_LCD_16x2_MAIN.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/871039659/I2C.p1: C:/Mis\ Proyectos/Librerias/I2C/I2C.X/I2C.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/871039659" 
	@${RM} ${OBJECTDIR}/_ext/871039659/I2C.p1.d 
	@${RM} ${OBJECTDIR}/_ext/871039659/I2C.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/871039659/I2C.p1 "C:/Mis Proyectos/Librerias/I2C/I2C.X/I2C.c" 
	@-${MV} ${OBJECTDIR}/_ext/871039659/I2C.d ${OBJECTDIR}/_ext/871039659/I2C.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/871039659/I2C.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/283620341/DS1307.p1: C:/Mis\ Proyectos/Librerias/DS1307/DS1307.X/DS1307.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/283620341" 
	@${RM} ${OBJECTDIR}/_ext/283620341/DS1307.p1.d 
	@${RM} ${OBJECTDIR}/_ext/283620341/DS1307.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/283620341/DS1307.p1 "C:/Mis Proyectos/Librerias/DS1307/DS1307.X/DS1307.c" 
	@-${MV} ${OBJECTDIR}/_ext/283620341/DS1307.d ${OBJECTDIR}/_ext/283620341/DS1307.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/283620341/DS1307.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/677274316/LCD_16x2.p1: C:/Mis\ Proyectos/Librerias/Display/LCD_16x2.X/LCD_16x2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/677274316" 
	@${RM} ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1 "C:/Mis Proyectos/Librerias/Display/LCD_16x2.X/LCD_16x2.c" 
	@-${MV} ${OBJECTDIR}/_ext/677274316/LCD_16x2.d ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/677274316/LCD_16x2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1774415731/BMP280.p1: C:/Mis\ Proyectos/Librerias/BMP280.X/BMP280.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1774415731" 
	@${RM} ${OBJECTDIR}/_ext/1774415731/BMP280.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1774415731/BMP280.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1774415731/BMP280.p1 "C:/Mis Proyectos/Librerias/BMP280.X/BMP280.c" 
	@-${MV} ${OBJECTDIR}/_ext/1774415731/BMP280.d ${OBJECTDIR}/_ext/1774415731/BMP280.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1774415731/BMP280.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1: C:/Mis\ Proyectos/Librerias/Conversor_unit.X/BCD_CONVER.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2044839580" 
	@${RM} ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1 "C:/Mis Proyectos/Librerias/Conversor_unit.X/BCD_CONVER.c" 
	@-${MV} ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.d ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2044839580/BCD_CONVER.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1939770129/AHT20.p1: C:/Mis\ Proyectos/Librerias/AHT20.X/AHT20.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1939770129" 
	@${RM} ${OBJECTDIR}/_ext/1939770129/AHT20.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1939770129/AHT20.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1939770129/AHT20.p1 "C:/Mis Proyectos/Librerias/AHT20.X/AHT20.c" 
	@-${MV} ${OBJECTDIR}/_ext/1939770129/AHT20.d ${OBJECTDIR}/_ext/1939770129/AHT20.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1939770129/AHT20.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/RELOJ_LCD_16x2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/RELOJ_LCD_16x2.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -mrom=default,-1f00-1fff -mram=default,-0-0,-70-70,-80-80,-f0-f0,-100-100,-170-170,-180-180,-1e5-1f0  $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/RELOJ_LCD_16x2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/RELOJ_LCD_16x2.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/RELOJ_LCD_16x2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/RELOJ_LCD_16x2.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/RELOJ_LCD_16x2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
