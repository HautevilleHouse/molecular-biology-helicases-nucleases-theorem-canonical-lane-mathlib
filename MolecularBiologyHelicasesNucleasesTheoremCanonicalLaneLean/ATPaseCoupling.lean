import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure ATPaseCouplingPackage (A : AdmissibleClass) where
  atpBindingSite : Prop
  hydrolysisCatalysis : Prop
  nucleotideSpecificity : Prop
  freeEnergyCoupling : Prop
  atpBindingSiteClosed : atpBindingSite
  hydrolysisCatalysisClosed : hydrolysisCatalysis
  nucleotideSpecificityClosed : nucleotideSpecificity
  freeEnergyCouplingClosed : freeEnergyCoupling

def ATPaseCouplingClosed (A : AdmissibleClass) (P : ATPaseCouplingPackage A) : Prop :=
  P.atpBindingSite ∧ P.hydrolysisCatalysis ∧ P.nucleotideSpecificity ∧ P.freeEnergyCoupling

theorem atpase_coupling_closed_from_evidence (A : AdmissibleClass) (P : ATPaseCouplingPackage A) :
    ATPaseCouplingClosed A P := by
  exact And.intro P.atpBindingSiteClosed
    (And.intro P.hydrolysisCatalysisClosed
      (And.intro P.nucleotideSpecificityClosed P.freeEnergyCouplingClosed))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse
