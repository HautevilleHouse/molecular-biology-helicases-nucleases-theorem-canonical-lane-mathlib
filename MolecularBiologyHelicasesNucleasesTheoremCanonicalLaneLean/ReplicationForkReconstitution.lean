import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure ReplicationForkPackage where
  helicaseCoupling : HelicaseNucleaseCouplingPackage
  polymeraseLoading : Prop
  leadingLaggingStrandCoordination : Prop
  forkStability : Prop

structure ReplicationForkEvidence (R : ReplicationForkPackage) where
  polymeraseLoadingClosed : R.polymeraseLoading
  leadingLaggingStrandCoordinationClosed : R.leadingLaggingStrandCoordination
  forkStabilityClosed : R.forkStability

def ReplicationForkClosed (R : ReplicationForkPackage) : Prop :=
  R.polymeraseLoading ∧ R.leadingLaggingStrandCoordination ∧ R.forkStability

theorem replication_fork_closed_from_evidence (R : ReplicationForkPackage)
    (E : ReplicationForkEvidence R) : ReplicationForkClosed R := by
  exact And.intro E.polymeraseLoadingClosed
    (And.intro E.leadingLaggingStrandCoordinationClosed E.forkStabilityClosed)

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse