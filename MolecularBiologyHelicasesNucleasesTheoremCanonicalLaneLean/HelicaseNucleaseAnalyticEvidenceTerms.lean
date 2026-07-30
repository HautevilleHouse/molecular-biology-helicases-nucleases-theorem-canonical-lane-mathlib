import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure HelicaseMechanismEvidenceTerms (H : HelicaseMechanismFoundationalInhabitants) where
  atpBindingHydrolysisClosed : H.atpBindingHydrolysis
  translocationDirectionalityClosed : H.translocationDirectionality
  strandSeparationActivityClosed : H.strandSeparationActivity
  processivityControlClosed : H.processivityControl

def HelicaseMechanismFoundationalInhabitants.evidenceTerms
    (H : HelicaseMechanismFoundationalInhabitants) : HelicaseMechanismEvidenceTerms H :=
  {
    atpBindingHydrolysisClosed := H.atpBindingHydrolysisTerm
    translocationDirectionalityClosed := H.translocationDirectionalityTerm
    strandSeparationActivityClosed := H.strandSeparationActivityTerm
    processivityControlClosed := H.processivityControlTerm
  }

structure NucleaseDomainEvidenceTerms (N : NucleaseDomainFoundationalInhabitants) where
  dnaBindingDomainClosed : N.dnaBindingDomain
  catalyticSiteConfigurationClosed : N.catalyticSiteConfiguration
  metalIonCoordinationClosed : N.metalIonCoordination
  cleavageMechanismClosed : N.cleavageMechanism

def NucleaseDomainFoundationalInhabitants.evidenceTerms
    (N : NucleaseDomainFoundationalInhabitants) : NucleaseDomainEvidenceTerms N :=
  {
    dnaBindingDomainClosed := N.dnaBindingDomainTerm
    catalyticSiteConfigurationClosed := N.catalyticSiteConfigurationTerm
    metalIonCoordinationClosed := N.metalIonCoordinationTerm
    cleavageMechanismClosed := N.cleavageMechanismTerm
  }

structure UnwindingCouplingEvidenceTerms (U : UnwindingCouplingFoundationalInhabitants) where
  helicaseNucleaseCoordinationClosed : U.helicaseNucleaseCoordination
  rateCouplingConstantClosed : U.rateCouplingConstant
  stallForceResponseClosed : U.stallForceResponse
  fidelityCheckpointClosed : U.fidelityCheckpoint

def UnwindingCouplingFoundationalInhabitants.evidenceTerms
    (U : UnwindingCouplingFoundationalInhabitants) : UnwindingCouplingEvidenceTerms U :=
  {
    helicaseNucleaseCoordinationClosed := U.helicaseNucleaseCoordinationTerm
    rateCouplingConstantClosed := U.rateCouplingConstantTerm
    stallForceResponseClosed := U.stallForceResponseTerm
    fidelityCheckpointClosed := U.fidelityCheckpointTerm
  }

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse