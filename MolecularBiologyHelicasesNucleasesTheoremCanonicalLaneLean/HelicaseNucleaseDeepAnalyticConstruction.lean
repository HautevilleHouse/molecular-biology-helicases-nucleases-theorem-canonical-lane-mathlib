import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure AtpBindingPocketConstruction where
  walkerMotifConsensus : Prop
  nucleotideBindingAffinity : Prop
  hydrolysisTriggerGeometry : Prop
  walkerMotifConsensusTerm : walkerMotifConsensus
  nucleotideBindingAffinityTerm : nucleotideBindingAffinity
  hydrolysisTriggerGeometryTerm : hydrolysisTriggerGeometry

structure TranslocationMotorConstruction where
  inchwormModelAdopted : Prop
  stepSizeDetermined : Prop
  powerStrokeCoupling : Prop
  inchwormModelAdoptedTerm : inchwormModelAdopted
  stepSizeDeterminedTerm : stepSizeDetermined
  powerStrokeCouplingTerm : powerStrokeCoupling

structure DnaCleavageDomainConstruction where
  activeSiteResidues : Prop
  twoMetalIonMechanism : Prop
  cleavageGeometry : Prop
  activeSiteResiduesTerm : activeSiteResidues
  twoMetalIonMechanismTerm : twoMetalIonMechanism
  cleavageGeometryTerm : cleavageGeometry

structure HelicaseNucleaseDeepAnalyticConstruction where
  atpBinding : AtpBindingPocketConstruction
  translocationMotor : TranslocationMotorConstruction
  dnaCleavage : DnaCleavageDomainConstruction

def HelicaseNucleaseDeepAnalyticConstruction.toFoundational
    (C : HelicaseNucleaseDeepAnalyticConstruction) : HelicaseMechanismFoundationalInhabitants := by
  exact {
    atpBindingHydrolysis := C.atpBinding.hydrolysisTriggerGeometry
    translocationDirectionality := C.translocationMotor.inchwormModelAdopted
    strandSeparationActivity := C.translocationMotor.powerStrokeCoupling
    processivityControl := C.translocationMotor.stepSizeDetermined
    atpBindingHydrolysisTerm := C.atpBinding.hydrolysisTriggerGeometryTerm
    translocationDirectionalityTerm := C.translocationMotor.inchwormModelAdoptedTerm
    strandSeparationActivityTerm := C.translocationMotor.powerStrokeCouplingTerm
    processivityControlTerm := C.translocationMotor.stepSizeDeterminedTerm
  }

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse