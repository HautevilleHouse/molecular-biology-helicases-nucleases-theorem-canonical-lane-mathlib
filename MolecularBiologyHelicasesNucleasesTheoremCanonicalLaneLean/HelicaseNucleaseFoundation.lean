import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure HelicaseNucleaseFoundationPackage where
  helicaseMechanism : HelicaseMechanismFoundationalInhabitants
  nucleaseDomain : NucleaseDomainFoundationalInhabitants
  unwindingCoupling : UnwindingCouplingFoundationalInhabitants

def HelicaseNucleaseFoundationClosed (F : HelicaseNucleaseFoundationPackage) : Prop :=
  F.helicaseMechanism.atpBindingHydrolysis ∧
  F.helicaseMechanism.translocationDirectionality ∧
  F.helicaseMechanism.strandSeparationActivity ∧
  F.helicaseMechanism.processivityControl ∧
  F.nucleaseDomain.dnaBindingDomain ∧
  F.nucleaseDomain.catalyticSiteConfiguration ∧
  F.nucleaseDomain.metalIonCoordination ∧
  F.nucleaseDomain.cleavageMechanism ∧
  F.unwindingCoupling.helicaseNucleaseCoordination ∧
  F.unwindingCoupling.rateCouplingConstant ∧
  F.unwindingCoupling.stallForceResponse ∧
  F.unwindingCoupling.fidelityCheckpoint

theorem helicase_nuclease_foundation_closed_from_evidence (F : HelicaseNucleaseFoundationPackage) :
    HelicaseNucleaseFoundationClosed F := by
  refine And.intro F.helicaseMechanism.atpBindingHydrolysisTerm ?_
  refine And.intro F.helicaseMechanism.translocationDirectionalityTerm ?_
  refine And.intro F.helicaseMechanism.strandSeparationActivityTerm ?_
  refine And.intro F.helicaseMechanism.processivityControlTerm ?_
  refine And.intro F.nucleaseDomain.dnaBindingDomainTerm ?_
  refine And.intro F.nucleaseDomain.catalyticSiteConfigurationTerm ?_
  refine And.intro F.nucleaseDomain.metalIonCoordinationTerm ?_
  refine And.intro F.nucleaseDomain.cleavageMechanismTerm ?_
  refine And.intro F.unwindingCoupling.helicaseNucleaseCoordinationTerm ?_
  refine And.intro F.unwindingCoupling.rateCouplingConstantTerm ?_
  refine And.intro F.unwindingCoupling.stallForceResponseTerm ?_
  exact F.unwindingCoupling.fidelityCheckpointTerm

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse