import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesTheoremCanonicalLaneLean

structure ConstitutiveLaw where
  strainStressRelation : Type u → Type v
  elasticityTensor : Type u → Type v
  linearElasticLaw : Prop
  isotropyCondition : Prop

structure ConstitutiveLawEvidence (C : ConstitutiveLaw) where
  linearElasticLawClosed : C.linearElasticLaw
  isotropyConditionClosed : C.isotropyCondition

def ConstitutiveLawClosed (C : ConstitutiveLaw) : Prop :=
  C.linearElasticLaw ∧ C.isotropyCondition

theorem constitutive_law_closed_from_evidence (C : ConstitutiveLaw) (E : ConstitutiveLawEvidence C) : ConstitutiveLawClosed C :=
  And.intro E.linearElasticLawClosed E.isotropyConditionClosed

end LinearElasticityInitialStressesTheoremCanonicalLaneLean
end HautevilleHouse