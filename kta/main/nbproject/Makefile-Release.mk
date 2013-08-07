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
CND_CONF=Release
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
LDLIBSOPTIONS=-L/usr/lib/postgresql/9.1/lib ../a1sl/dist/Release/GNU-Linux-x86/liba1sl.a ../a2sl/dist/Release/GNU-Linux-x86/liba2sl.a -Wl,-rpath,../a01dl/dist/Release/GNU-Linux-x86 -L../a01dl/dist/Release/GNU-Linux-x86 -la01dl -Wl,-rpath,../a02dl/dist/Release/GNU-Linux-x86 -L../a02dl/dist/Release/GNU-Linux-x86 -la02dl -lpq

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../a1sl/dist/Release/GNU-Linux-x86/liba1sl.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../a2sl/dist/Release/GNU-Linux-x86/liba2sl.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../a01dl/dist/Release/GNU-Linux-x86/liba01dl.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ../a02dl/dist/Release/GNU-Linux-x86/liba02dl.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/main.o: main.cc 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/main.o main.cc

# Subprojects
.build-subprojects:
	cd ../a1sl && ${MAKE} -f Makefile CONF=Release
	cd ../a2sl && ${MAKE} -f Makefile CONF=Release
	cd ../a01dl && ${MAKE}  -f Makefile CONF=Release
	cd ../a02dl && ${MAKE}  -f Makefile CONF=Release

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/main

# Subprojects
.clean-subprojects:
	cd ../a1sl && ${MAKE} -f Makefile CONF=Release clean
	cd ../a2sl && ${MAKE} -f Makefile CONF=Release clean
	cd ../a01dl && ${MAKE}  -f Makefile CONF=Release clean
	cd ../a02dl && ${MAKE}  -f Makefile CONF=Release clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
