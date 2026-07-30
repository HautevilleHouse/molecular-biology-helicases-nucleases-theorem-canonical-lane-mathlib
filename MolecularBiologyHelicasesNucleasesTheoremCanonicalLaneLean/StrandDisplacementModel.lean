import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure StrandDisplacementModel where
  dnaTemplate : Type u
  primerStrand : Type v
  helicaseMotor : Type w
  displacementRate : Prop
  processivityProfile : Prop
  atpConsumptionCoupling : Prop
  replicationForkProgression : Prop

structure StrandDisplacementEvidence (S : StrandDisplacementModel) where
  displacementRateClosed : Prop
  processivityProfileClosed : Prop
  atpConsumptionCouplingClosed : Prop
  replicationForkProgressionClosed : Prop

def StrandDisplacementClosed (S : StrandDisplacementModel) : Prop :=
  S.displacementRate ∧ S.processivityProfile ∧ S.atpConsumptionCoupling ∧ S.replicationForkProgression

theorem strand_displacement_closed_from_evidence (S : StrandDisplacementModel) (E : StrandDisplacementEvidence S) :
  StrandDisplacementClosed S := by
  exact And.intro E.displacementRateClosed (And.intro E.processivityProfileClosed (And.intro E.atpConsumptionCouplingClosed E.replicationForkProgressionClosed))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse