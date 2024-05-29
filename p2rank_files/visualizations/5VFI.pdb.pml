
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/5VFI.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/5VFI.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1264,1272,590,591,1190,1191,1192,1265,1266,1269,1270,1271,1268,1292,1293,1294,1295,1281,1276,517,1282,1283,768,723,724,609,610,708,446,448,607,592,728,327,746,750,749,343,344,221,222,223,779,166,167,202,204,1331,199,169,170,178,182,183,184,186,209,206,190,193,195,196,197,173,175,1167,1177,1178,1138,1141,1296,1297,1381,1383,1379,1172,1163] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1956,1958,1960,1959,1816,1885,1887,1814,1817,1812,1813,1815,1943,1950,1953,1934,1787,1792,1749,1750,1795,1782,1775,1776,1777,1807,1796,1800,1730,1690,1693,1949] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1580,1439,1440,1446,1447,1581,1577,1560,1561,1579,1388,1402,1126,1301,1298,1299,1300,1382,1383,1376,1386,1390,1391,1129,1130,1307] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [321,615,78,265,267,268,270,269,76,311,300,301,303,305,302,304,306,616,617,619,618,620,621] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [904,940,936,937,938,817,1228,973,935,971,881,815,1218,1225,1226,883,1219] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        