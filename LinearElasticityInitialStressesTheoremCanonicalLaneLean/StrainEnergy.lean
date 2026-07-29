import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure StrainEnergyPackage where
  strainEnergyFunctional : Type u
  coercivity : Prop
  lowerSemicontinuity : Prop
  convexity : Prop

structure StrainEnergyEvidence (S : StrainEnergyPackage) where
  coercivityClosed : S.coercivity
  lowerSemicontinuityClosed : S.lowerSemicontinuity
  convexityClosed : S.convexity

def StrainEnergyClosed (S : StrainEnergyPackage) : Prop :=
  S.coercivity ∧ S.lowerSemicontinuity ∧ S.convexity

theorem strain_energy_closed_from_evidence
    (S : StrainEnergyPackage) (E : StrainEnergyEvidence S) :
    StrainEnergyClosed S := by
  exact And.intro E.coercivityClosed
    (And.intro E.lowerSemicontinuityClosed E.convexityClosed)

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse