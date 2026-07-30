import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure HelicaseBindingAffinity where
  helicaseType : Type u
  dnaSubstrate : Type v
  bindingConstant : Type w
  atpHydrolysisRate : Prop
  processivityLength : Prop
  bindingSpecificity : Prop

structure HelicaseBindingEvidence (H : HelicaseBindingAffinity) where
  bindingConstantClosed : Prop
  atpHydrolysisRateClosed : Prop
  processivityLengthClosed : Prop
  bindingSpecificityClosed : Prop

def HelicaseBindingClosed (H : HelicaseBindingAffinity) : Prop :=
  H.atpHydrolysisRate ∧ H.processivityLength ∧ H.bindingSpecificity

theorem helicase_binding_closed_from_evidence (H : HelicaseBindingAffinity) (E : HelicaseBindingEvidence H) :
  HelicaseBindingClosed H := by
  exact And.intro E.atpHydrolysisRateClosed (And.intro E.processivityLengthClosed E.bindingSpecificityClosed)

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse