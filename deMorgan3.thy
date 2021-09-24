theory deMorgan3
  imports Main

begin

lemma de_morgan_3 : "(\<not>p \<or> \<not>q) \<longrightarrow> \<not>(p \<and> q)"
  apply (rule impI)
  apply (rule notI)
  apply (erule disjE)
  apply (erule conjE)
   apply (erule notE)
   apply assumption
  apply (erule conjE)
  apply (erule notE)
  apply assumption
  done


end