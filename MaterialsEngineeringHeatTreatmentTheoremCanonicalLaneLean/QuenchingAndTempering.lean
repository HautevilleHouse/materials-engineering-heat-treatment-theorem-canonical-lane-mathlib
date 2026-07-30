import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure QuenchingAndTemperingPackage where
  coolingRate : Type u
  martensiteStart : Prop
  temperingTime : Type v
  hardnessAfterTempering : Prop
  residualStress : Prop

structure QuenchingAndTemperingEvidence (Q : QuenchingAndTemperingPackage) where
  martensiteStartClosed : Q.martensiteStart
  hardnessAfterTemperingClosed : Q.hardnessAfterTempering
  residualStressClosed : Q.residualStress

def QuenchingAndTemperingClosed (Q : QuenchingAndTemperingPackage) : Prop :=
  Q.martensiteStart ∧ Q.hardnessAfterTempering ∧ Q.residualStress

theorem quenching_and_tempering_closed_from_evidence (Q : QuenchingAndTemperingPackage) (E : QuenchingAndTemperingEvidence Q) :
    QuenchingAndTemperingClosed Q := by
  exact And.intro E.martensiteStartClosed (And.intro E.hardnessAfterTemperingClosed E.residualStressClosed)

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse