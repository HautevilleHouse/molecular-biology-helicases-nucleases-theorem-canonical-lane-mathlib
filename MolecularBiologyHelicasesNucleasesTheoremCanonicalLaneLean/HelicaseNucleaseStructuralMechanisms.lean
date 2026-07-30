import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure StructuralMechanismsPackage where
  helicaseDomainArchitecture : Prop
  nucleaseActiveSite : Prop
  translocaseCoupling : Prop
  conformationalSwitching : Prop

structure StructuralMechanismsEvidence (S : StructuralMechanismsPackage) where
  helicaseDomainArchitectureClosed : S.helicaseDomainArchitecture
  nucleaseActiveSiteClosed : S.nucleaseActiveSite
  translocaseCouplingClosed : S.translocaseCoupling
  conformationalSwitchingClosed : S.conformationalSwitching

def StructuralMechanismsClosed (S : StructuralMechanismsPackage) : Prop :=
  S.helicaseDomainArchitecture ∧ S.nucleaseActiveSite ∧
  S.translocaseCoupling ∧ S.conformationalSwitching

theorem structural_mechanisms_closed_from_evidence
    (S : StructuralMechanismsPackage) (E : StructuralMechanismsEvidence S) :
    StructuralMechanismsClosed S := by
  exact And.intro E.helicaseDomainArchitectureClosed
    (And.intro E.nucleaseActiveSiteClosed
      (And.intro E.translocaseCouplingClosed E.conformationalSwitchingClosed))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse