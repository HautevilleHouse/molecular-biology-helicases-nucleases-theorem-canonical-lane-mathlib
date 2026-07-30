import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean.HelicaseNucleaseObject

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean

structure TranslocationUnwindingPackage (O : HelNucDomain) where
  atpBinding : Prop
  atpHydrolysis : Prop
  conformationalChange : Prop
  basePairDestabilization : Prop
  strandSeparation : Prop
  processivity : Prop
  atpBindingTerm : atpBinding
  atpHydrolysisTerm : atpHydrolysis
  conformationalChangeTerm : conformationalChange
  basePairDestabilizationTerm : basePairDestabilization
  strandSeparationTerm : strandSeparation
  processivityTerm : processivity

def TranslocationUnwindingClosed (O : HelNucDomain) (T : TranslocationUnwindingPackage O) : Prop :=
  T.atpBinding ∧ T.atpHydrolysis ∧ T.conformationalChange ∧
  T.basePairDestabilization ∧ T.strandSeparation ∧ T.processivity

theorem translocation_unwinding_closed_from_evidence (O : HelNucDomain) (T : TranslocationUnwindingPackage O) :
    TranslocationUnwindingClosed O T := by
  exact And.intro T.atpBindingTerm
    (And.intro T.atpHydrolysisTerm
      (And.intro T.conformationalChangeTerm
        (And.intro T.basePairDestabilizationTerm
          (And.intro T.strandSeparationTerm T.processivityTerm))))

end MolecularBiologyHelicasesNucleasesTheoremCanonicalLaneLean
end HautevilleHouse