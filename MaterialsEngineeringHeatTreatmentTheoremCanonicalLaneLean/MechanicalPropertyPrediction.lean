import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure MechanicalPropertyPredictionPackage where
  ultimateTensileStrength: ℝ
  yieldStrength : ℝ
  elongation : ℝ
  impactToughness : ℝ
  hardness : ℝ
  fatigueLimit : ℝ
  constitutiveModelValidated : Prop

structure MechanicalPropertyPredictionEvidence (M : MechanicalPropertyPredictionPackage) where
  ultimateTensileStrengthClosed : M.ultimateTensileStrength > 0
  yieldStrengthClosed : M.yieldStrength > 0
  elongationClosed : M.elongation > 0
  impactToughnessClosed : M.impactToughness > 0
  hardnessClosed : M.hardness > 0
  fatigueLimitClosed : M.fatigueLimit > 0
  constitutiveModelValidatedClosed : M.constitutiveModelValidated

def MechanicalPropertyPredictionClosed (M : MechanicalPropertyPredictionPackage) : Prop :=
  (M.ultimateTensileStrength > 0) ∧ (M.yieldStrength > 0) ∧ (M.elongation > 0) ∧
  (M.impactToughness > 0) ∧ (M.hardness > 0) ∧ (M.fatigueLimit > 0) ∧
  M.constitutiveModelValidated

theorem mechanical_property_prediction_closed_from_evidence
    (M : MechanicalPropertyPredictionPackage) (E : MechanicalPropertyPredictionEvidence M) :
    MechanicalPropertyPredictionClosed M := by
  exact And.intro E.ultimateTensileStrengthClosed
    (And.intro E.yieldStrengthClosed
      (And.intro E.elongationClosed
        (And.intro E.impactToughnessClosed
          (And.intro E.hardnessClosed
            (And.intro E.fatigueLimitClosed E.constitutiveModelValidatedClosed)))))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse