#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=../a1sl/dist/Debug/GNU-Linux-x86/liba1sl.a ../a2sl/dist/Debug/GNU-Linux-x86/liba2sl.a -Wl,-rpath,../a01dl/dist/Debug/GNU-Linux-x86 -L../a01dl/dist/Debug/GNU-Linux-x86 -la01dl -Wl,-rpath,../a02dl/dist/Debug/GNU-Linux-x86 -L../a02dl/dist/Debug/GNU-Linux-x86 -la02dl

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../a1sl/dist/Debug/GNU-Linux-x86/liba1sl.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../a2sl/dist/Debug/GNU-Linux-x86/liba2sl.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../a01dl/dist/Debug/GNU-Linux-x86/liba01dl.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../a02dl/dist/Debug/GNU-Linux-x86/liba02dl.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/main.o: main.cc 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -MMD -MP -MF $@.d -o ${OBJECTDIR}/main.o main.cc

# Subprojects
.build-subprojects:
	cd ../a1sl && ${MAKE} -f Makefile CONF=Debug
	cd ../a2sl && ${MAKE} -f Makefile CONF=Debug
	cd ../a01dl && ${MAKE}  -f Makefile CONF=Debug
	cd ../a02dl && ${MAKE}  -f Makefile CONF=Debug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main

# Subprojects
.clean-subprojects:
	cd ../a1sl && ${MAKE} -f Makefile CONF=Debug clean
	cd ../a2sl && ${MAKE} -f Makefile CONF=Debug clean
	cd ../a01dl && ${MAKE}  -f Makefile CONF=Debug clean
	cd ../a02dl && ${MAKE}  -f Makefile CONF=Debug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
