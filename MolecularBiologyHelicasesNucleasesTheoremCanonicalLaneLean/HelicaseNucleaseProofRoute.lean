import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure HelicaseNucleaseRouteObligations where
  helicaseMechanism : Prop
  nucleaseActivity : Prop
  unwindingCoupling : Prop
  substrateRecognition : Prop
  endProductFormation : Prop

structure HelicaseNucleaseRouteEvidence (R : HelicaseNucleaseRouteObligations) where
  helicaseMechanismClosed : R.helicaseMechanism
  nucleaseActivityClosed : R.nucleaseActivity
  unwindingCouplingClosed : R.unwindingCoupling
  substrateRecognitionClosed : R.substrateRecognition
  endProductFormationClosed : R.endProductFormation

def HelicaseNucleaseRouteClosed (R : HelicaseNucleaseRouteObligations) : Prop :=
  R.helicaseMechanism ∧ R.nucleaseActivity ∧ R.unwindingCoupling ∧
  R.substrateRecognition ∧ R.endProductFormation

theorem helicase_nuclease_route_closed_from_evidence (R : HelicaseNucleaseRouteObligations)
    (E : HelicaseNucleaseRouteEvidence R) : HelicaseNucleaseRouteClosed R := by
  exact And.intro E.helicaseMechanismClosed
    (And.intro E.nucleaseActivityClosed
      (And.intro E.unwindingCouplingClosed
        (And.intro E.substrateRecognitionClosed E.endProductFormationClosed)))

structure HelicaseNucleaseCanonicalLaneRoute (A : AdmissibleClass) where
  obligations : HelicaseNucleaseRouteObligations
  evidence : HelicaseNucleaseRouteEvidence obligations
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem helicase_nuclease_route_yields_constrained_closure (A : AdmissibleClass)
    (R : HelicaseNucleaseCanonicalLaneRoute A) : ConstrainedTheoremClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse